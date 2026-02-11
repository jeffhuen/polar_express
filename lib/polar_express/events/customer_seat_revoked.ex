# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerSeatRevoked do
  @moduledoc """
  Webhook event for `customer_seat.revoked`.

  Sent when a customer seat is revoked.

  This event is triggered when access to a seat is revoked, either manually by the organization or automatically when a subscription is canceled.
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer_seat.revoked"
  def lookup_type, do: "customer_seat.revoked"
end
