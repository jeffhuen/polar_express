# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionMigrated do
  @moduledoc """
  Webhook event for `subscription.migrated`.

  Sent when Polar takes over billing of a subscription migrated from another provider.

  This fires at cutover, once the subscription is live on Polar. `provider`
  and `provider_subscription_id` identify the subscription on the billing
  provider so you can correlate the two.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.migrated"`.
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
  def event_type, do: "subscription.migrated"
end
