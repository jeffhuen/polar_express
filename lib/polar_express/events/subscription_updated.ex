# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionUpdated do
  @moduledoc """
  Webhook event for `subscription.updated`.

  Sent when a subscription is updated. This event fires for all changes to the subscription, including renewals.

  If you want more specific events, you can listen to `subscription.active`, `subscription.canceled`, `subscription.past_due`, and `subscription.revoked`.

  To listen specifically for renewals, you can listen to `order.created` events and check the `billing_reason` field.

  **Discord & Slack support:** On cancellation, past due, and revocation. Renewals are skipped.

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.updated"`.
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
  def event_type, do: "subscription.updated"
end
