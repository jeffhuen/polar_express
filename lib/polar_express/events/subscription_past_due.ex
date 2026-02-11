# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionPastDue do
  @moduledoc """
  Webhook event for `subscription.past_due`.

  Sent when a subscription payment fails and the subscription enters `past_due` status.

  This is a recoverable state - the customer can update their payment method to restore the subscription.
  Benefits may be revoked depending on the organization's grace period settings.

  If payment retries are exhausted, a `subscription.revoked` event will be sent.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.past_due"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Subscription`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Subscription.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "subscription.past_due"
end
