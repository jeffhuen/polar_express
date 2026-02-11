# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionPastDue do
  @moduledoc """
  Webhook event for `subscription.past_due`.

  Sent when a subscription payment fails and the subscription enters `past_due` status.

  This is a recoverable state - the customer can update their payment method to restore the subscription.
  Benefits may be revoked depending on the organization's grace period settings.

  If payment retries are exhausted, a `subscription.revoked` event will be sent.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.past_due"
  def lookup_type, do: "subscription.past_due"
end
