# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerUpdated do
  @moduledoc """
  Webhook event for `customer.updated`.

  Sent when a customer is updated.

  This event is fired when the customer details are updated.

  If you want to be notified when a customer subscription or benefit state changes, you should listen to the `customer_state_changed` event.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Customer` struct.
  """

  @typedoc """
  * `type` - Always `"customer.updated"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Customer`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Customer.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "customer.updated"
end
