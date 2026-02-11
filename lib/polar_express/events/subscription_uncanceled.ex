# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionUncanceled do
  @moduledoc """
  Webhook event for `subscription.uncanceled`.

  Sent when a customer revokes a pending cancellation.

  When a customer cancels with "at period end", they retain access until the
  subscription would renew. During this time, they can change their mind and
  undo the cancellation. This event is triggered when they do so.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.uncanceled"`.
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
  def event_type, do: "subscription.uncanceled"
end
