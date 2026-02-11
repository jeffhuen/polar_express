# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrderUpdated do
  @moduledoc """
  Webhook event for `order.updated`.

  Sent when an order is updated.

  An order is updated when:

  * Its status changes, e.g. from `pending` to `paid`.
  * It's refunded, partially or fully.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Order` struct.
  """

  @typedoc """
  * `type` - Always `"order.updated"`.
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
  def event_type, do: "order.updated"
end
