# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionRevoked do
  @moduledoc """
  Webhook event for `subscription.revoked`.

  Sent when a subscription is revoked and the user loses access immediately.
  Happens when the subscription is canceled or payment retries are exhausted (status becomes `unpaid`).

  For payment failures that can still be recovered, see `subscription.past_due`.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.revoked"`.
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
  def event_type, do: "subscription.revoked"
end
