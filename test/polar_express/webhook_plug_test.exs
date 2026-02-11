defmodule PolarExpress.WebhookPlugTest do
  use ExUnit.Case, async: false
  import Plug.Test
  import Plug.Conn

  alias PolarExpress.{Webhook, WebhookPlug}

  @secret "whsec_test_plug_secret"
  @path "/webhook/polar"
  @payload ~s({"type": "checkout.created", "timestamp": "2024-01-01T00:00:00Z", "data": {"id": "checkout_123"}})

  defp signed_conn(secret \\ @secret) do
    timestamp = System.system_time(:second)
    signature = Webhook.compute_signature(timestamp, @payload, secret)
    header = "t=#{timestamp},v1=#{signature}"

    conn(:post, @path, @payload)
    |> put_req_header("webhook-signature", header)
    |> put_req_header("content-type", "application/json")
  end

  # -- init/1 ----------------------------------------------------------------

  describe "init/1" do
    test "requires :path option" do
      assert_raise ArgumentError, ~r/requires :path option/, fn ->
        WebhookPlug.init(secret: "whsec_...")
      end
    end

    test "does not require :secret when config may provide it" do
      # No raise — secret will be resolved at call time from config
      opts = WebhookPlug.init(path: @path)
      assert Keyword.get(opts, :path) == @path
    end

    test "accepts explicit :secret" do
      opts = WebhookPlug.init(secret: "whsec_...", path: @path)
      assert Keyword.get(opts, :secret) == "whsec_..."
    end
  end

  # -- secret resolution -----------------------------------------------------

  describe "secret from config" do
    setup do
      on_exit(fn ->
        Application.delete_env(:polar_express, :webhook_secret)
      end)

      :ok
    end

    test "uses :webhook_secret from application config" do
      Application.put_env(:polar_express, :webhook_secret, @secret)

      opts = WebhookPlug.init(path: @path)
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert %PolarExpress.Resources.Event{type: "checkout.created"} = conn.assigns.polar_express_event
    end

    test "raises when no secret in config and no explicit secret" do
      # Ensure no config is set
      Application.delete_env(:polar_express, :webhook_secret)

      opts = WebhookPlug.init(path: @path)

      assert_raise ArgumentError, ~r/PolarExpress webhook secret not configured/, fn ->
        signed_conn() |> WebhookPlug.call(opts)
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
      Application.put_env(:polar_express, :webhook_secret, {__MODULE__, :test_secret, []})

      opts = WebhookPlug.init(path: @path)
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert conn.assigns.polar_express_event.type == "checkout.created"

      Application.delete_env(:polar_express, :webhook_secret)
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
      Application.put_env(:polar_express, :webhook_secret, @secret)
      on_exit(fn -> Application.delete_env(:polar_express, :webhook_secret) end)
      :ok
    end

    test "assigns polar_express_event on valid signature" do
      opts = WebhookPlug.init(path: @path)
      conn = signed_conn() |> WebhookPlug.call(opts)

      refute conn.halted
      assert %PolarExpress.Resources.Event{} = conn.assigns.polar_express_event
      assert conn.assigns.polar_express_event.type == "checkout.created"
    end

    test "returns 400 on invalid signature" do
      opts = WebhookPlug.init(path: @path)
      conn = signed_conn("whsec_wrong") |> WebhookPlug.call(opts)

      assert conn.halted
      assert conn.status == 400
    end

    test "returns 400 on missing signature header" do
      opts = WebhookPlug.init(path: @path)

      conn =
        conn(:post, @path, @payload)
        |> put_req_header("content-type", "application/json")
        |> WebhookPlug.call(opts)

      assert conn.halted
      assert conn.status == 400
      assert conn.resp_body =~ "Missing webhook signature header"
    end

    test "passes through non-matching paths" do
      opts = WebhookPlug.init(path: @path)

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
