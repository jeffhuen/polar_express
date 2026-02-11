# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionCreated do
  @moduledoc """
  Webhook event for `subscription.created`.

  Sent when a new subscription is created.

  When this event occurs, the subscription `status` might not be `active` yet, as we can still have to wait for the first payment to be processed.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "subscription.created"
  def lookup_type, do: "subscription.created"
end
