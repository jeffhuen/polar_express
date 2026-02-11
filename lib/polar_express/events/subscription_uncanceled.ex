# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionUncanceled do
  @moduledoc """
  Webhook event for `subscription.uncanceled`.

  Sent when a customer revokes a pending cancellation.

  When a customer cancels with "at period end", they retain access until the
  subscription would renew. During this time, they can change their mind and
  undo the cancellation. This event is triggered when they do so.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.uncanceled"
  def lookup_type, do: "subscription.uncanceled"
end
