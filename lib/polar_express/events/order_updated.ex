# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrderUpdated do
  @moduledoc """
  Webhook event for `order.updated`.

  Sent when an order is updated.

  An order is updated when:

  * Its status changes, e.g. from `pending` to `paid`.
  * It's refunded, partially or fully.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "order.updated"
  def lookup_type, do: "order.updated"
end
