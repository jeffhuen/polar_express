# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrderRefunded do
  @moduledoc """
  Webhook event for `order.refunded`.

  Sent when an order is fully or partially refunded.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "order.refunded"
  def lookup_type, do: "order.refunded"
end
