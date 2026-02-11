# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrderPaid do
  @moduledoc """
  Webhook event for `order.paid`.

  Sent when an order is paid.

  When you receive this event, the order is fully processed and payment has been received.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "order.paid"
  def lookup_type, do: "order.paid"
end
