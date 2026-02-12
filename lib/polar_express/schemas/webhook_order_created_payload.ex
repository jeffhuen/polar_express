# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookOrderCreatedPayload do
  @moduledoc """
  WebhookOrderCreatedPayload

  Sent when a new order is created.

  A new order is created when:

  * A customer purchases a one-time product. In this case, `billing_reason` is set to `purchase`.
  * A customer starts a subscription. In this case, `billing_reason` is set to `subscription_create`.
  * A subscription is renewed. In this case, `billing_reason` is set to `subscription_cycle`.
  * A subscription is upgraded or downgraded with an immediate proration invoice. In this case, `billing_reason` is set to `subscription_update`.

  > [!WARNING]
  > The order might not be paid yet, so the `status` field might be `pending`.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Order.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookOrderCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Order
    }
  end

  def __date_fields__, do: [:timestamp]
end
