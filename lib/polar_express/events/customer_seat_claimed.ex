# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerSeatClaimed do
  @moduledoc """
  Webhook event for `customer_seat.claimed`.

  Sent when a customer seat is claimed.

  This event is triggered when a customer accepts the seat invitation and claims their access.
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer_seat.claimed"
  def lookup_type, do: "customer_seat.claimed"
end
