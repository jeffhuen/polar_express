# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionUpdatedPayload do
  @moduledoc """
  WebhookSubscriptionUpdatedPayload

  Sent when a subscription is updated. This event fires for all changes to the subscription, including renewals.

  If you want more specific events, you can listen to `subscription.active`, `subscription.canceled`, `subscription.past_due`, and `subscription.revoked`.

  To listen specifically for renewals, you can listen to `order.created` events and check the `billing_reason` field.

  **Discord & Slack support:** On cancellation, past due, and revocation. Renewals are skipped.
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Subscription.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookSubscriptionUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
