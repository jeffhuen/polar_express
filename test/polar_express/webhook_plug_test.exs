defmodule PolarExpress.WebhookPlugTest do
  use ExUnit.Case, async: false
  import Plug.Test
  import Plug.Conn

  alias PolarExpress.{Webhook, WebhookPlug}

  @secret "whsec_test_plug_secret"
  @msg_id "msg_plug_test_123"
  @path "/webhook/polar"
  @payload ~s({"type": "checkout.created", "timestamp": "2024-01-01T00:00:00Z", "data": {"id": "checkout_123"}})

  defp signed_conn(secret \\ @secret) do
    timestamp = System.system_time(:second)
    signature = Webhook.compute_signature(@msg_id, timestamp, @payload, secret)

    conn(:post, @path, @payload)
    |> put_req_header("webhook-id", @msg_id)
    |> put_req_header("webhook-timestamp", Integer.to_string(timestamp))
    |> put_req_header("webhook-signature", "v1,#{signature}")
    |> put_req_header("content-type", "application/json")
  end

  # -- init/1 ----------------------------------------------------------------

  describe "init/1" do
    test "requires :path option" do
      assert_raise ArgumentError, ~r/requires :path option/, fn ->
        WebhookPlug.init(secret: "whsec_...")
      end
    end

    test "requires :secret option" do
      assert_raise ArgumentError, ~r/requires :secret option/, fn ->
        WebhookPlug.init(path: @path)
      end
    end

    test "accepts explicit :secret" do
      opts = WebhookPlug.init(secret: "whsec_...", path: @path)
      assert Keyword.get(opts, :secret) == "whsec_..."
    end
  end

  # -- secret resolution -----------------------------------------------------

  describe "secret resolution" do
    setup do
      on_exit(fn ->
        Application.delete_env(:polar_express, :webhook_secret)
      end)

      :ok
    end

    test "does not read :webhook_secret from application config" do
      Application.put_env(:polar_express, :webhook_secret, @secret)

      assert_raise ArgumentError, ~r/requires :secret option/, fn ->
        WebhookPlug.init(path: @path)
      end
    end
  end

  describe "explicit secret" do
    test "uses explicit :secret over config" do
      # Set config to a wrong secret
      Application.put_env(:polar_express, :webhook_secret, "whsec_wrong_config")

      opts = WebhookPlug.init(secret: @secret, path: @path)
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert conn.assigns.polar_express_event.type == "checkout.created"

      Application.delete_env(:polar_express, :webhook_secret)
    end
  end

  describe "MFA secret" do
    test "resolves secret from {mod, fun, args} tuple" do
      opts = WebhookPlug.init(secret: {__MODULE__, :test_secret, []}, path: @path)
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert conn.assigns.polar_express_event.type == "checkout.created"
    end

    test "resolves explicit MFA secret" do
      opts = WebhookPlug.init(secret: {__MODULE__, :test_secret, []}, path: @path)
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert conn.assigns.polar_express_event.type == "checkout.created"
    end
  end

  # -- plug behavior ---------------------------------------------------------

  describe "call/2" do
    setup do
      %{opts: WebhookPlug.init(secret: @secret, path: @path)}
    end

    test "assigns polar_express_event on valid signature", %{opts: opts} do
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert %PolarExpress.Resources.Event{} = conn.assigns.polar_express_event
      assert conn.assigns.polar_express_event.type == "checkout.created"
    end

    test "returns 400 on invalid signature", %{opts: opts} do
      conn = signed_conn("whsec_wrong") |> WebhookPlug.call(opts)

      assert conn.halted
      assert conn.status == 400
    end

    test "returns 400 on missing webhook headers", %{opts: opts} do
      conn =
        conn(:post, @path, @payload)
        |> put_req_header("content-type", "application/json")
        |> WebhookPlug.call(opts)

      assert conn.halted
      assert conn.status == 400
      assert conn.resp_body =~ "Missing required Standard Webhooks headers"
    end

    test "returns 400 when only webhook-signature present (missing id and timestamp)", %{
      opts: opts
    } do
      conn =
        conn(:post, @path, @payload)
        |> put_req_header("webhook-signature", "v1,somesig")
        |> put_req_header("content-type", "application/json")
        |> WebhookPlug.call(opts)

      assert conn.halted
      assert conn.status == 400
    end

    test "passes through non-matching paths", %{opts: opts} do
      conn =
        conn(:post, "/other/path", "")
        |> WebhookPlug.call(opts)

      refute conn.halted
      refute Map.has_key?(conn.assigns, :polar_express_event)
    end
  end

  # Helper for MFA secret tests
  def test_secret, do: @secret
end
