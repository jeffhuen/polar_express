# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerSeatAssigned do
  @moduledoc """
  Webhook event for `customer_seat.assigned`.

  Sent when a new customer seat is assigned.

  This event is triggered when a seat is assigned to a customer by the organization.
  The customer will receive an invitation email to claim the seat.
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer_seat.assigned"
  def lookup_type, do: "customer_seat.assigned"
end
