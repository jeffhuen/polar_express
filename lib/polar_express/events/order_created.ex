# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrderCreated do
  @moduledoc """
  Webhook event for `order.created`.

  Sent when a new order is created.

  A new order is created when:

  * A customer purchases a one-time product. In this case, `billing_reason` is set to `purchase`.
  * A customer starts a subscription. In this case, `billing_reason` is set to `subscription_create`.
  * A subscription is renewed. In this case, `billing_reason` is set to `subscription_cycle`.
  * A subscription is upgraded or downgraded with an immediate proration invoice. In this case, `billing_reason` is set to `subscription_update`.

  > [!WARNING]
  > The order might not be paid yet, so the `status` field might be `pending`.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Order` struct.
  """

  @typedoc """
  * `type` - Always `"order.created"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Order`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Order.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "order.created"
end
