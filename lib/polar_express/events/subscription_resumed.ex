# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionResumed do
  @moduledoc """
  Webhook event for `subscription.resumed`.

  Sent when a paused subscription resumes, restoring the customer's access.

  Resuming starts a new billing period and charges the customer immediately.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.resumed"`.
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
  def event_type, do: "subscription.resumed"
end
