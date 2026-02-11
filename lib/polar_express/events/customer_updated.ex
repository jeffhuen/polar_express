# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerUpdated do
  @moduledoc """
  Webhook event for `customer.updated`.

  Sent when a customer is updated.

  This event is fired when the customer details are updated.

  If you want to be notified when a customer subscription or benefit state changes, you should listen to the `customer_state_changed` event.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer.updated"
  def lookup_type, do: "customer.updated"
end
