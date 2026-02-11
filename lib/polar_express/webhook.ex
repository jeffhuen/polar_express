defmodule PolarExpress.Webhook do
  @moduledoc """
  Webhook signature verification and event construction.

  Polar uses the [Standard Webhooks](https://github.com/standard-webhooks/standard-webhooks)
  specification. Each webhook request includes three headers:

    * `webhook-id` — unique message identifier
    * `webhook-timestamp` — Unix epoch seconds
    * `webhook-signature` — `v1,<base64>` HMAC-SHA256 signature

  ## Usage

      headers = %{
        "webhook-id" => msg_id,
        "webhook-timestamp" => timestamp,
        "webhook-signature" => signature
      }

      case PolarExpress.Webhook.construct_event(payload, headers, secret) do
        {:ok, event} -> handle_event(event)
        {:error, error} -> send_resp(conn, 400, error.message)
      end

  Most users should use `PolarExpress.WebhookPlug` instead, which handles all
  of this automatically.
  """

  alias PolarExpress.{Deserializer, Error, Resources}

  @typedoc """
  Standard Webhooks headers sent by Polar with every webhook request.

    * `"webhook-id"` — unique message identifier (used in signature and for deduplication)
    * `"webhook-timestamp"` — Unix epoch seconds as a string
    * `"webhook-signature"` — one or more `v1,<base64>` HMAC-SHA256 signatures (space-separated)
  """
  @type headers :: %{
          required(String.t()) => String.t()
        }

  @typedoc "Options for webhook verification."
  @type verify_opts :: [tolerance: pos_integer()]

  @default_tolerance 300

  # Mapping from webhook event type to data schema module.
  # Derived from the OpenAPI spec's webhooks section — 35 event types.
  @event_data_schemas %{
    "benefit.created" => PolarExpress.Schemas.Benefit,
    "benefit.updated" => PolarExpress.Schemas.Benefit,
    "benefit_grant.created" => PolarExpress.Schemas.BenefitGrantWebhook,
    "benefit_grant.cycled" => PolarExpress.Schemas.BenefitGrantWebhook,
    "benefit_grant.revoked" => PolarExpress.Schemas.BenefitGrantWebhook,
    "benefit_grant.updated" => PolarExpress.Schemas.BenefitGrantWebhook,
    "checkout.created" => PolarExpress.Schemas.Checkout,
    "checkout.expired" => PolarExpress.Schemas.Checkout,
    "checkout.updated" => PolarExpress.Schemas.Checkout,
    "customer.created" => PolarExpress.Schemas.Customer,
    "customer.deleted" => PolarExpress.Schemas.Customer,
    "customer.state_changed" => PolarExpress.Schemas.CustomerState,
    "customer.updated" => PolarExpress.Schemas.Customer,
    "customer_seat.assigned" => PolarExpress.Schemas.CustomerSeat,
    "customer_seat.claimed" => PolarExpress.Schemas.CustomerSeat,
    "customer_seat.revoked" => PolarExpress.Schemas.CustomerSeat,
    "member.created" => PolarExpress.Schemas.Member,
    "member.deleted" => PolarExpress.Schemas.Member,
    "member.updated" => PolarExpress.Schemas.Member,
    "order.created" => PolarExpress.Schemas.Order,
    "order.paid" => PolarExpress.Schemas.Order,
    "order.refunded" => PolarExpress.Schemas.Order,
    "order.updated" => PolarExpress.Schemas.Order,
    "organization.updated" => PolarExpress.Schemas.Organization,
    "product.created" => PolarExpress.Schemas.Product,
    "product.updated" => PolarExpress.Schemas.Product,
    "refund.created" => PolarExpress.Schemas.Refund,
    "refund.updated" => PolarExpress.Schemas.Refund,
    "subscription.active" => PolarExpress.Schemas.Subscription,
    "subscription.canceled" => PolarExpress.Schemas.Subscription,
    "subscription.created" => PolarExpress.Schemas.Subscription,
    "subscription.past_due" => PolarExpress.Schemas.Subscription,
    "subscription.revoked" => PolarExpress.Schemas.Subscription,
    "subscription.uncanceled" => PolarExpress.Schemas.Subscription,
    "subscription.updated" => PolarExpress.Schemas.Subscription
  }

  @doc """
  Verify a webhook signature and construct a typed event struct.

  Parses the JSON payload, verifies the HMAC-SHA256 signature against the
  Standard Webhooks headers, and deserializes the event data into the
  appropriate schema struct (e.g. `PolarExpress.Schemas.Order` for `"order.paid"`).
  Unknown event types are returned with raw map data.

  ## Parameters

    * `payload` - Raw request body (binary string, NOT parsed JSON)
    * `headers` - Standard Webhooks headers (see `t:headers/0`)
    * `secret` - Webhook endpoint signing secret (`whsec_...`)
    * `opts` - See `t:verify_opts/0`

  ## Examples

      headers = %{
        "webhook-id" => "msg_2Lml0nCjGr...",
        "webhook-timestamp" => "1714000000",
        "webhook-signature" => "v1,K7rRz..."
      }

      case PolarExpress.Webhook.construct_event(raw_body, headers, secret) do
        {:ok, %PolarExpress.Resources.Event{type: "order.paid", data: order}} ->
          fulfill_order(order)

        {:error, %PolarExpress.Error{message: msg}} ->
          Logger.warning("Webhook rejected: \#{msg}")
      end
  """
  @spec construct_event(binary(), headers(), String.t(), verify_opts()) ::
          {:ok, Resources.Event.t()} | {:error, Error.t()}
  def construct_event(payload, headers, secret, opts \\ []) do
    with :ok <- verify_headers(payload, headers, secret, opts),
         {:ok, data} <- decode_payload(payload) do
      event_type = data["type"]
      schema_mod = Map.get(@event_data_schemas, event_type)

      typed_data =
        if schema_mod do
          Deserializer.cast(data["data"], resource: schema_mod)
        else
          data["data"]
        end

      {:ok,
       %PolarExpress.Resources.Event{
         type: event_type,
         timestamp: data["timestamp"],
         data: typed_data
       }}
    end
  end

  defp decode_payload(payload) do
    case JSON.decode(payload) do
      {:ok, data} -> {:ok, data}
      {:error, _} -> {:error, Error.signature_verification_error("Invalid JSON payload")}
    end
  end

  @doc """
  Verify Standard Webhooks headers without constructing the event.

  Checks the required headers are present, the timestamp is within the
  tolerance window (bidirectional — rejects both stale and future-dated
  events), and at least one `v1` signature matches the expected
  HMAC-SHA256 using constant-time comparison.

  ## Parameters

    * `payload` - Raw request body (binary string)
    * `headers` - Standard Webhooks headers (see `t:headers/0`)
    * `secret` - Webhook endpoint signing secret (`whsec_...`)
    * `opts` - See `t:verify_opts/0`
  """
  @spec verify_headers(binary(), headers(), String.t(), verify_opts()) ::
          :ok | {:error, Error.t()}
  def verify_headers(payload, headers, secret, opts \\ []) do
    tolerance = Keyword.get(opts, :tolerance, @default_tolerance)

    msg_id = headers["webhook-id"]
    timestamp_str = headers["webhook-timestamp"]
    sig_header = headers["webhook-signature"]

    with :ok <- validate_required_headers(msg_id, timestamp_str, sig_header),
         {:ok, timestamp} <- parse_timestamp(timestamp_str),
         {:ok, signatures} <- parse_signatures(sig_header),
         :ok <- verify_timestamp(timestamp, tolerance) do
      verify_signature(msg_id, timestamp, payload, secret, signatures)
    end
  end

  @doc """
  Compute the expected Base64-encoded HMAC-SHA256 signature for a payload.

  The signed content follows the Standard Webhooks format:

      "{msg_id}.{timestamp}.{payload}"

  The secret is used as raw bytes (Polar-specific — they pass the full secret
  string including the `whsec_` prefix as the HMAC key, rather than
  Base64-decoding it as the Standard Webhooks spec suggests).
  """
  @spec compute_signature(String.t(), integer(), binary(), String.t()) :: String.t()
  def compute_signature(msg_id, timestamp, payload, secret) do
    signed_content = "#{msg_id}.#{timestamp}.#{payload}"

    :crypto.mac(:hmac, :sha256, secret, signed_content)
    |> Base.encode64()
  end

  # -- Private ----------------------------------------------------------------

  defp validate_required_headers(nil, _, _),
    do: {:error, Error.signature_verification_error("Missing webhook-id header")}

  defp validate_required_headers(_, nil, _),
    do: {:error, Error.signature_verification_error("Missing webhook-timestamp header")}

  defp validate_required_headers(_, _, nil),
    do: {:error, Error.signature_verification_error("Missing webhook-signature header")}

  defp validate_required_headers(_, _, _), do: :ok

  defp parse_timestamp(timestamp_str) do
    case Integer.parse(timestamp_str) do
      {ts, ""} -> {:ok, ts}
      _ -> {:error, Error.signature_verification_error("Invalid webhook-timestamp: #{timestamp_str}")}
    end
  end

  # Standard Webhooks signature header format:
  # "v1,<base64sig>" or "v1,<sig1> v1,<sig2>" (space-separated, multiple sigs)
  defp parse_signatures(sig_header) do
    signatures =
      sig_header
      |> String.split(" ", trim: true)
      |> Enum.flat_map(fn entry ->
        case String.split(entry, ",", parts: 2) do
          ["v1", sig] -> [sig]
          _ -> []
        end
      end)

    if signatures == [] do
      {:error, Error.signature_verification_error("No v1 signatures found in webhook-signature header")}
    else
      {:ok, signatures}
    end
  end

  defp verify_timestamp(timestamp, tolerance) do
    now = System.system_time(:second)
    age = abs(now - timestamp)

    if age > tolerance do
      {:error,
       Error.signature_verification_error(
         "Timestamp outside the tolerance zone (#{age}s > #{tolerance}s)"
       )}
    else
      :ok
    end
  end

  defp verify_signature(msg_id, timestamp, payload, secret, signatures) do
    expected = compute_signature(msg_id, timestamp, payload, secret)

    if Enum.any?(signatures, &secure_compare(&1, expected)) do
      :ok
    else
      {:error,
       Error.signature_verification_error(
         "No matching v1 signature found. Ensure you are passing the raw request body and the correct secret."
       )}
    end
  end

  # Constant-time string comparison to prevent timing attacks.
  defp secure_compare(a, b) when byte_size(a) != byte_size(b), do: false

  defp secure_compare(a, b) do
    a_bytes = :binary.bin_to_list(a)
    b_bytes = :binary.bin_to_list(b)

    result =
      Enum.zip(a_bytes, b_bytes)
      |> Enum.reduce(0, fn {x, y}, acc -> Bitwise.bor(acc, Bitwise.bxor(x, y)) end)

    result == 0
  end
end
