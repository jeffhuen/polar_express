# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionCycled do
  @moduledoc """
  Webhook event for `subscription.cycled`.

  Sent when a subscription enters a new billing period.

  The payload carries the new `current_period_start` and `current_period_end`.
  It fires when the period rolls over, before the renewal order exists and
  regardless of whether the renewal payment succeeds — listen to `order.paid`
  if you need the payment.

  A trial converting to a paid subscription starts a new period, so it fires
  there too. Read `status` to tell the two apart.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.cycled"`.
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
  def event_type, do: "subscription.cycled"
end
