# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionPastDuePayload do
  @moduledoc """
  WebhookSubscriptionPastDuePayload

  Sent when a subscription payment fails and the subscription enters `past_due` status.

  This is a recoverable state - the customer can update their payment method to restore the subscription.
  Benefits may be revoked depending on the organization's grace period settings.

  If payment retries are exhausted, a `subscription.revoked` event will be sent.

  **Discord & Slack support:** Full
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

  @schema_name "WebhookSubscriptionPastDuePayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
