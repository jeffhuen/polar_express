# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerSeatRevoked do
  @moduledoc """
  Webhook event for `customer_seat.revoked`.

  Sent when a customer seat is revoked.

  This event is triggered when access to a seat is revoked, either manually by the organization or automatically when a subscription is canceled.

  The `data` field contains a `PolarExpress.Schemas.CustomerSeat` struct.
  """

  @typedoc """
  * `type` - Always `"customer_seat.revoked"`.
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
  def event_type, do: "customer_seat.revoked"
end
