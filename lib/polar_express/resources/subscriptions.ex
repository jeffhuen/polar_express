# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Subscriptions do
  @moduledoc """
  Subscriptions

  Subscriptions API operations.
  """

  @typedoc """
  * `amount` - The amount of the subscription.
  * `cancel_at_period_end` - Whether the subscription will be canceled at the end of the current period.
  * `canceled_at` - The timestamp when the subscription was canceled. The subscription might still be active if `cancel_at_period_end` is `true`.
  * `checkout_id`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The currency of the subscription.
  * `current_meter_period_end` - The end timestamp of the current meter period, if the product has a meter cycle set. This is when credits next renew.
  * `current_meter_period_start` - The start timestamp of the current meter period, if the product has a meter cycle set. Metered credits are granted and overage is settled on this cadence.
  * `current_period_end` - The end timestamp of the current billing period. Format: date-time.
  * `current_period_start` - The start timestamp of the current billing period. Format: date-time.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer`
  * `customer_cancellation_comment`
  * `customer_cancellation_reason`
  * `customer_id` - The ID of the subscribed customer. Format: uuid4.
  * `discount`
  * `discount_id` - The ID of the applied discount, if any.
  * `ended_at` - The timestamp when the subscription ended.
  * `ends_at` - The timestamp when the subscription will end.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `meters` - List of meters associated with the subscription.
  * `modified_at` - Last modification timestamp of the object.
  * `past_due_at` - The timestamp when the subscription entered `past_due` status.
  * `pause_at_period_end` - Whether the subscription will be paused at the end of the current period.
  * `paused_at` - The timestamp when the subscription was paused.
  * `pending_update` - Pending subscription update that will be applied at the beginning of the next period. If `null`, there is no pending update.
  * `prices` - List of enabled prices for the subscription.
  * `product`
  * `product_id` - The ID of the subscribed product. Format: uuid4.
  * `recurring_interval` - The interval at which the subscription recurs.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on.
  * `resumes_at` - The timestamp when a paused subscription is scheduled to automatically resume, if set.
  * `seats` - The number of seats for seat-based subscriptions. None for non-seat subscriptions.
  * `started_at` - The timestamp when the subscription started.
  * `status` - The status of the subscription.
  * `trial_end` - The end timestamp of the trial period, if any.
  * `trial_start` - The start timestamp of the trial period, if any.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :cancel_at_period_end,
    :canceled_at,
    :checkout_id,
    :created_at,
    :currency,
    :current_meter_period_end,
    :current_meter_period_start,
    :current_period_end,
    :current_period_start,
    :custom_field_data,
    :customer,
    :customer_cancellation_comment,
    :customer_cancellation_reason,
    :customer_id,
    :discount,
    :discount_id,
    :ended_at,
    :ends_at,
    :id,
    :metadata,
    :meters,
    :modified_at,
    :past_due_at,
    :pause_at_period_end,
    :paused_at,
    :pending_update,
    :prices,
    :product,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :resumes_at,
    :seats,
    :started_at,
    :status,
    :trial_end,
    :trial_start
  ]

  @object_name "subscriptions"
  def object_name, do: @object_name
end
