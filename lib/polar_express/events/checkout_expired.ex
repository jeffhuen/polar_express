# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CheckoutExpired do
  @moduledoc """
  Webhook event for `checkout.expired`.

  Sent when a checkout expires.

  This event fires when a checkout reaches its expiration time without being completed.
  Developers can use this to send reminder emails or track checkout abandonment.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Checkout` struct.
  """

  @typedoc """
  * `type` - Always `"checkout.expired"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Checkout`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Checkout.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "checkout.expired"
end
