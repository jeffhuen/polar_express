# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MaintainerSubscriptionRenewalNotificationPayload do
  @moduledoc """
  MaintainerSubscriptionRenewalNotificationPayload
  """

  @typedoc """
  * `currency`
  * `customer_email` - Nullable.
  * `customer_name`
  * `formatted_price_amount`
  * `formatted_recurring_interval`
  * `organization_slug` - Nullable.
  * `product_name`
  * `product_price_amount`
  * `recurring_interval`
  * `recurring_interval_count`
  * `subscription_id` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :currency,
    :customer_email,
    :customer_name,
    :formatted_price_amount,
    :formatted_recurring_interval,
    :organization_slug,
    :product_name,
    :product_price_amount,
    :recurring_interval,
    :recurring_interval_count,
    :subscription_id
  ]

  @schema_name "MaintainerSubscriptionRenewalNotificationPayload"
  def schema_name, do: @schema_name
end
