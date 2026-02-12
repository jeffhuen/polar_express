# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerStateSubscription do
  @moduledoc """
  CustomerStateSubscription

  An active customer subscription.
  """

  @typedoc """
  * `amount` - The amount of the subscription.
  * `cancel_at_period_end` - Whether the subscription will be canceled at the end of the current period.
  * `canceled_at` - The timestamp when the subscription was canceled. The subscription might still be active if `cancel_at_period_end` is `true`. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The currency of the subscription.
  * `current_period_end` - The end timestamp of the current billing period. Nullable.
  * `current_period_start` - The start timestamp of the current billing period. Format: date-time.
  * `custom_field_data` - Key-value object storing custom field values.
  * `discount_id` - The ID of the applied discount, if any. Nullable.
  * `ends_at` - The timestamp when the subscription will end. Nullable.
  * `id` - The ID of the subscription. Format: uuid4.
  * `metadata`
  * `meters` - List of meters associated with the subscription.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `product_id` - The ID of the subscribed product. Format: uuid4.
  * `recurring_interval` - The interval at which the subscription recurs.
  * `started_at` - The timestamp when the subscription started. Nullable.
  * `status` - Possible values: `active`, `trialing`.
  * `trial_end` - The end timestamp of the trial period, if any. Nullable.
  * `trial_start` - The start timestamp of the trial period, if any. Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          cancel_at_period_end: boolean() | nil,
          canceled_at: DateTime.t() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          current_period_end: DateTime.t() | nil,
          current_period_start: DateTime.t() | nil,
          custom_field_data:
            %{String.t() => String.t() | integer() | boolean() | DateTime.t() | nil} | nil,
          discount_id: String.t() | nil,
          ends_at: DateTime.t() | nil,
          id: String.t() | nil,
          metadata: PolarExpress.Schemas.MetadataOutputType.t() | nil,
          meters: [PolarExpress.Schemas.CustomerStateSubscriptionMeter.t()] | nil,
          modified_at: DateTime.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: PolarExpress.Schemas.SubscriptionRecurringInterval.t() | nil,
          started_at: DateTime.t() | nil,
          status: String.t() | nil,
          trial_end: DateTime.t() | nil,
          trial_start: DateTime.t() | nil
        }

  defstruct [
    :amount,
    :cancel_at_period_end,
    :canceled_at,
    :created_at,
    :currency,
    :current_period_end,
    :current_period_start,
    :custom_field_data,
    :discount_id,
    :ends_at,
    :id,
    :metadata,
    :meters,
    :modified_at,
    :product_id,
    :recurring_interval,
    :started_at,
    :status,
    :trial_end,
    :trial_start
  ]

  @schema_name "CustomerStateSubscription"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "meters" => PolarExpress.Schemas.CustomerStateSubscriptionMeter,
      "recurring_interval" => PolarExpress.Schemas.SubscriptionRecurringInterval
    }
  end

  def __date_fields__,
    do: [
      :canceled_at,
      :created_at,
      :current_period_end,
      :current_period_start,
      :ends_at,
      :modified_at,
      :started_at,
      :trial_end,
      :trial_start
    ]
end
