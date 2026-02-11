# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CheckoutUpdated do
  @moduledoc """
  Webhook event for `checkout.updated`.

  Sent when a checkout is updated.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Checkout` struct.
  """

  @typedoc """
  * `type` - Always `"checkout.updated"`.
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
  def event_type, do: "checkout.updated"
end
