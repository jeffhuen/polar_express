# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionUpdated do
  @moduledoc """
  Webhook event for `subscription.updated`.

  Sent when a subscription is updated. This event fires for all changes to the subscription, including renewals.

  If you want more specific events, you can listen to `subscription.active`, `subscription.canceled`, `subscription.past_due`, and `subscription.revoked`.

  To listen specifically for renewals, you can listen to `order.created` events and check the `billing_reason` field.

  **Discord & Slack support:** On cancellation, past due, and revocation. Renewals are skipped.
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.updated"
  def lookup_type, do: "subscription.updated"
end
