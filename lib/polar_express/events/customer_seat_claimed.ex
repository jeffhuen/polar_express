# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerSeatClaimed do
  @moduledoc """
  Webhook event for `customer_seat.claimed`.

  Sent when a customer seat is claimed.

  This event is triggered when a customer accepts the seat invitation and claims their access.

  The `data` field contains a `PolarExpress.Schemas.CustomerSeat` struct.
  """

  @typedoc """
  * `type` - Always `"customer_seat.claimed"`.
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
  def event_type, do: "customer_seat.claimed"
end
