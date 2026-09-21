# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionMigratedPayload do
  @moduledoc """
  WebhookSubscriptionMigratedPayload

  Sent when Polar takes over billing of a subscription migrated from another provider.

  This fires at cutover, once the subscription is live on Polar. `provider`
  and `provider_subscription_id` identify the subscription on the billing
  provider so you can correlate the two.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `api_version`
  * `data`
  * `provider` - The billing provider the subscription was migrated from.
  * `provider_subscription_id` - The identifier of the subscription on the billing provider.
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:api_version, :data, :provider, :provider_subscription_id, :timestamp, :type]

  @schema_name "WebhookSubscriptionMigratedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
