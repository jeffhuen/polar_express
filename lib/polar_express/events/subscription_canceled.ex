# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionCanceled do
  @moduledoc """
  Webhook event for `subscription.canceled`.

  Sent when a subscription is canceled.
  Customers might still have access until the end of the current period.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.canceled"
  def lookup_type, do: "subscription.canceled"
end
