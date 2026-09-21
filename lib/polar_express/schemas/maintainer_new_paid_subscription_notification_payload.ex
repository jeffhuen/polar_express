# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MaintainerNewPaidSubscriptionNotificationPayload do
  @moduledoc """
  MaintainerNewPaidSubscriptionNotificationPayload
  """

  @typedoc """
  * `currency`
  * `formatted_price_amount`
  * `formatted_price_with_interval`
  * `subscriber_email` - Nullable.
  * `subscriber_name`
  * `subscription_id` - Nullable.
  * `tier_name`
  * `tier_organization_name`
  * `tier_organization_slug` - Nullable.
  * `tier_price_amount` - Nullable.
  * `tier_price_recurring_interval`
  * `tier_price_recurring_interval_count`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :currency,
    :formatted_price_amount,
    :formatted_price_with_interval,
    :subscriber_email,
    :subscriber_name,
    :subscription_id,
    :tier_name,
    :tier_organization_name,
    :tier_organization_slug,
    :tier_price_amount,
    :tier_price_recurring_interval,
    :tier_price_recurring_interval_count
  ]

  @schema_name "MaintainerNewPaidSubscriptionNotificationPayload"
  def schema_name, do: @schema_name
end
