# File generated from our OpenAPI spec
defmodule PolarExpress.Events.SubscriptionCreated do
  @moduledoc """
  Webhook event for `subscription.created`.

  Sent when a new subscription is created.

  When this event occurs, the subscription `status` might not be `active` yet, as we can still have to wait for the first payment to be processed.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Subscription` struct.
  """

  @typedoc """
  * `type` - Always `"subscription.created"`.
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
  def event_type, do: "subscription.created"
end
