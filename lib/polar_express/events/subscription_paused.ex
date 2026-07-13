# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionPaused do
  @moduledoc """
  Webhook event for `subscription.paused`.

  Sent when a subscription is paused and the customer temporarily loses access.

  No order is created while paused. The subscription resumes either on its
  scheduled resume date or when resumed manually, starting a new billing period.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.paused"`.
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
  def event_type, do: "subscription.paused"
end
