# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderSubscription do
  @moduledoc """
  OrderSubscription
  """

  @typedoc """
  * `amount` - The amount of the subscription.
  * `cancel_at_period_end` - Whether the subscription will be canceled at the end of the current period.
  * `canceled_at` - The timestamp when the subscription was canceled. The subscription might still be active if `cancel_at_period_end` is `true`. Nullable.
  * `checkout_id` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The currency of the subscription.
  * `current_period_end` - The end timestamp of the current billing period. Nullable.
  * `current_period_start` - The start timestamp of the current billing period. Format: date-time.
  * `customer_cancellation_comment` - Nullable.
  * `customer_cancellation_reason` - Nullable.
  * `customer_id` - The ID of the subscribed customer. Format: uuid4.
  * `discount_id` - The ID of the applied discount, if any. Nullable.
  * `ended_at` - The timestamp when the subscription ended. Nullable.
  * `ends_at` - The timestamp when the subscription will end. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `product_id` - The ID of the subscribed product. Format: uuid4.
  * `recurring_interval` - The interval at which the subscription recurs.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on.
  * `seats` - The number of seats for seat-based subscriptions. None for non-seat subscriptions. Nullable.
  * `started_at` - The timestamp when the subscription started. Nullable.
  * `status` - The status of the subscription.
  * `trial_end` - The end timestamp of the trial period, if any. Nullable.
  * `trial_start` - The start timestamp of the trial period, if any. Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          cancel_at_period_end: boolean() | nil,
          canceled_at: DateTime.t() | nil,
          checkout_id: String.t() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          current_period_end: DateTime.t() | nil,
          current_period_start: DateTime.t() | nil,
          customer_cancellation_comment: String.t() | nil,
          customer_cancellation_reason: PolarExpress.Schemas.CustomerCancellationReason.t() | nil,
          customer_id: String.t() | nil,
          discount_id: String.t() | nil,
          ended_at: DateTime.t() | nil,
          ends_at: DateTime.t() | nil,
          id: String.t() | nil,
          metadata: PolarExpress.Schemas.MetadataOutputType.t() | nil,
          modified_at: DateTime.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: PolarExpress.Schemas.SubscriptionRecurringInterval.t() | nil,
          recurring_interval_count: integer() | nil,
          seats: integer() | nil,
          started_at: DateTime.t() | nil,
          status: PolarExpress.Schemas.SubscriptionStatus.t() | nil,
          trial_end: DateTime.t() | nil,
          trial_start: DateTime.t() | nil
        }

  defstruct [
    :amount,
    :cancel_at_period_end,
    :canceled_at,
    :checkout_id,
    :created_at,
    :currency,
    :current_period_end,
    :current_period_start,
    :customer_cancellation_comment,
    :customer_cancellation_reason,
    :customer_id,
    :discount_id,
    :ended_at,
    :ends_at,
    :id,
    :metadata,
    :modified_at,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :seats,
    :started_at,
    :status,
    :trial_end,
    :trial_start
  ]

  @schema_name "OrderSubscription"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_cancellation_reason" => PolarExpress.Schemas.CustomerCancellationReason,
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "recurring_interval" => PolarExpress.Schemas.SubscriptionRecurringInterval,
      "status" => PolarExpress.Schemas.SubscriptionStatus
    }
  end

  def __date_fields__,
    do: [
      :canceled_at,
      :created_at,
      :current_period_end,
      :current_period_start,
      :ended_at,
      :ends_at,
      :modified_at,
      :started_at,
      :trial_end,
      :trial_start
    ]
end
