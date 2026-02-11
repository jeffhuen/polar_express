defmodule PolarExpress.WebhookTest do
  use ExUnit.Case, async: true

  alias PolarExpress.{Error, Webhook}

  @secret "whsec_test_secret"
  @msg_id "msg_test_123"
  @payload ~s({"type": "checkout.created", "timestamp": "2024-01-01T00:00:00Z", "data": {"id": "checkout_123"}})

  defp generate_headers(payload \\ @payload, opts \\ []) do
    secret = Keyword.get(opts, :secret, @secret)
    msg_id = Keyword.get(opts, :msg_id, @msg_id)
    timestamp = Keyword.get(opts, :timestamp, System.system_time(:second))
    signature = Webhook.compute_signature(msg_id, timestamp, payload, secret)

    %{
      "webhook-id" => msg_id,
      "webhook-timestamp" => Integer.to_string(timestamp),
      "webhook-signature" => "v1,#{signature}"
    }
  end

  describe "construct_event/4" do
    test "constructs event with valid signature" do
      headers = generate_headers()
      assert {:ok, event} = Webhook.construct_event(@payload, headers, @secret)
      assert %PolarExpress.Resources.Event{} = event
      assert event.type == "checkout.created"
      assert %PolarExpress.Schemas.Checkout{} = event.data
      assert event.data.id == "checkout_123"
    end

    test "returns error with invalid signature" do
      headers = generate_headers(@payload, secret: "whsec_wrong")

      assert {:error, %Error{type: :signature_verification_error}} =
               Webhook.construct_event(@payload, headers, @secret)
    end

    test "returns error with tampered payload" do
      headers = generate_headers()
      tampered = ~s({"type": "order.created", "timestamp": "2024-01-01T00:00:00Z", "data": {}})

      assert {:error, %Error{type: :signature_verification_error}} =
               Webhook.construct_event(tampered, headers, @secret)
    end

    test "returns error with expired timestamp" do
      old_timestamp = System.system_time(:second) - 600
      headers = generate_headers(@payload, timestamp: old_timestamp)

      assert {:error, %Error{type: :signature_verification_error, message: message}} =
               Webhook.construct_event(@payload, headers, @secret, tolerance: 300)

      assert message =~ "Timestamp outside the tolerance zone"
    end

    test "returns error with future timestamp beyond tolerance" do
      future_timestamp = System.system_time(:second) + 600
      headers = generate_headers(@payload, timestamp: future_timestamp)

      assert {:error, %Error{type: :signature_verification_error, message: message}} =
               Webhook.construct_event(@payload, headers, @secret, tolerance: 300)

      assert message =~ "Timestamp outside the tolerance zone"
    end

    test "accepts timestamp within tolerance" do
      recent = System.system_time(:second) - 100
      headers = generate_headers(@payload, timestamp: recent)
      assert {:ok, _event} = Webhook.construct_event(@payload, headers, @secret, tolerance: 300)
    end

    test "returns error with unknown event type as raw map data" do
      payload = ~s({"type": "unknown.event", "timestamp": "2024-01-01T00:00:00Z", "data": {"foo": "bar"}})
      headers = generate_headers(payload)
      assert {:ok, event} = Webhook.construct_event(payload, headers, @secret)
      assert event.type == "unknown.event"
      assert event.data == %{"foo" => "bar"}
    end
  end

  describe "verify_headers/4" do
    test "returns :ok with valid headers" do
      headers = generate_headers()
      assert :ok = Webhook.verify_headers(@payload, headers, @secret)
    end

    test "returns error with missing webhook-id" do
      headers = generate_headers() |> Map.delete("webhook-id")
      assert {:error, %Error{message: message}} = Webhook.verify_headers(@payload, headers, @secret)
      assert message =~ "Missing webhook-id header"
    end

    test "returns error with missing webhook-timestamp" do
      headers = generate_headers() |> Map.delete("webhook-timestamp")
      assert {:error, %Error{message: message}} = Webhook.verify_headers(@payload, headers, @secret)
      assert message =~ "Missing webhook-timestamp header"
    end

    test "returns error with missing webhook-signature" do
      headers = generate_headers() |> Map.delete("webhook-signature")
      assert {:error, %Error{message: message}} = Webhook.verify_headers(@payload, headers, @secret)
      assert message =~ "Missing webhook-signature header"
    end

    test "returns error with no v1 signatures" do
      headers = generate_headers() |> Map.put("webhook-signature", "v0,somesig")
      assert {:error, %Error{message: message}} = Webhook.verify_headers(@payload, headers, @secret)
      assert message =~ "No v1 signatures"
    end

    test "returns error with invalid timestamp format" do
      headers = generate_headers() |> Map.put("webhook-timestamp", "not_a_number")
      assert {:error, %Error{message: message}} = Webhook.verify_headers(@payload, headers, @secret)
      assert message =~ "Invalid webhook-timestamp"
    end

    test "handles multiple v1 signatures (one valid)" do
      timestamp = System.system_time(:second)
      good_sig = Webhook.compute_signature(@msg_id, timestamp, @payload, @secret)

      headers = %{
        "webhook-id" => @msg_id,
        "webhook-timestamp" => Integer.to_string(timestamp),
        "webhook-signature" => "v1,badsig v1,#{good_sig}"
      }

      assert :ok = Webhook.verify_headers(@payload, headers, @secret)
    end
  end

  describe "compute_signature/4" do
    test "produces deterministic HMAC-SHA256 base64" do
      sig = Webhook.compute_signature("msg_1", 1_614_556_800, "test", "secret")
      assert is_binary(sig)
      # Base64 of 32-byte HMAC = 44 chars
      assert byte_size(sig) == 44
      # Same inputs produce same output
      assert sig == Webhook.compute_signature("msg_1", 1_614_556_800, "test", "secret")
    end

    test "different secrets produce different signatures" do
      sig1 = Webhook.compute_signature("msg_1", 12_345, "payload", "secret_a")
      sig2 = Webhook.compute_signature("msg_1", 12_345, "payload", "secret_b")
      refute sig1 == sig2
    end

    test "different msg_ids produce different signatures" do
      sig1 = Webhook.compute_signature("msg_1", 12_345, "payload", "secret")
      sig2 = Webhook.compute_signature("msg_2", 12_345, "payload", "secret")
      refute sig1 == sig2
    end
  end
end
