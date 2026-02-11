# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Subscriptions do
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
  * `current_period_end` - The end timestamp of the current billing period.
  * `current_period_start` - The start timestamp of the current billing period. Format: date-time.
  * `customer_cancellation_comment`
  * `customer_cancellation_reason`
  * `customer_id` - The ID of the subscribed customer. Format: uuid4.
  * `discount_id` - The ID of the applied discount, if any.
  * `ended_at` - The timestamp when the subscription ended.
  * `ends_at` - The timestamp when the subscription will end.
  * `id` - The ID of the object. Format: uuid4.
  * `meters` - List of meters associated with the subscription.
  * `modified_at` - Last modification timestamp of the object.
  * `prices` - List of enabled prices for the subscription.
  * `product`
  * `product_id` - The ID of the subscribed product. Format: uuid4.
  * `recurring_interval` - The interval at which the subscription recurs.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on.
  * `seats` - The number of seats for seat-based subscriptions. None for non-seat subscriptions.
  * `started_at` - The timestamp when the subscription started.
  * `status` - The status of the subscription.
  * `trial_end` - The end timestamp of the trial period, if any.
  * `trial_start` - The start timestamp of the trial period, if any.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          cancel_at_period_end: boolean() | nil,
          canceled_at: map() | nil,
          checkout_id: map() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          current_period_end: map() | nil,
          current_period_start: String.t() | nil,
          customer_cancellation_comment: map() | nil,
          customer_cancellation_reason: map() | nil,
          customer_id: String.t() | nil,
          discount_id: map() | nil,
          ended_at: map() | nil,
          ends_at: map() | nil,
          id: String.t() | nil,
          meters: [map()] | nil,
          modified_at: map() | nil,
          prices: [map()] | nil,
          product: map() | nil,
          product_id: String.t() | nil,
          recurring_interval: map() | nil,
          recurring_interval_count: integer() | nil,
          seats: map() | nil,
          started_at: map() | nil,
          status: map() | nil,
          trial_end: map() | nil,
          trial_start: map() | nil
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
    :meters,
    :modified_at,
    :prices,
    :product,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :seats,
    :started_at,
    :status,
    :trial_end,
    :trial_start
  ]

  @object_name "subscriptions"
  def object_name, do: @object_name
end
