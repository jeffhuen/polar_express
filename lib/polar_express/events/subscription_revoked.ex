# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionRevoked do
  @moduledoc """
  Webhook event for `subscription.revoked`.

  Sent when a subscription is revoked and the user loses access immediately.
  Happens when the subscription is canceled or payment retries are exhausted (status becomes `unpaid`).

  For payment failures that can still be recovered, see `subscription.past_due`.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.revoked"
  def lookup_type, do: "subscription.revoked"
end
