# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerSeatAssigned do
  @moduledoc """
  Webhook event for `customer_seat.assigned`.

  Sent when a new customer seat is assigned.

  This event is triggered when a seat is assigned to a customer by the organization.
  The customer will receive an invitation email to claim the seat.

  The `data` field contains a `PolarExpress.Schemas.CustomerSeat` struct.
  """

  @typedoc """
  * `type` - Always `"customer_seat.assigned"`.
  * `data` - The event payload. See `PolarExpress.Schemas.CustomerSeat`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.CustomerSeat.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "customer_seat.assigned"
end
