# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionActive do
  @moduledoc """
  Webhook event for `subscription.active`.

  Sent when a subscription becomes active,
  whether because it's a new paid subscription or because payment was recovered.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.active"
  def lookup_type, do: "subscription.active"
end
