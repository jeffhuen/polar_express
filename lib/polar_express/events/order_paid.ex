# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrderPaid do
  @moduledoc """
  Webhook event for `order.paid`.

  Sent when an order is paid.

  When you receive this event, the order is fully processed and payment has been received.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Order` struct.
  """

  @typedoc """
  * `type` - Always `"order.paid"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Order`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Order.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "order.paid"
end
