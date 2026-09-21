# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSubscription do
  @moduledoc """
  OrganizationSubscription
  """

  @typedoc """
  * `amount`
  * `cancel_at_period_end`
  * `canceled_at` - Nullable.
  * `currency`
  * `current_period_end` - Nullable.
  * `current_period_start` - Nullable.
  * `discount` - Nullable.
  * `ends_at` - Nullable.
  * `pending_change` - Nullable.
  * `plan`
  * `product_id` - Nullable.
  * `recurring_interval` - Nullable.
  * `recurring_interval_count` - Nullable.
  * `started_at` - Nullable.
  * `startup_program_scale_product_id` - Polar product id of the Scale plan, against which the Startup Program discount applies. Null when the feature is disabled. Nullable.
  * `startup_program_status` - Polar Startup Program status for this organization. Derived from the organization's Startup Program discount: 'invited' when the discount exists and hasn't been redeemed, 'consumed' once it has. Null when the feature is disabled or the organization hasn't been invited. Nullable.
  * `status`
  * `subscription_id` - Polar subscription ID. Null when the organization has no active subscription and is on the free plan. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :cancel_at_period_end,
    :canceled_at,
    :currency,
    :current_period_end,
    :current_period_start,
    :discount,
    :ends_at,
    :pending_change,
    :plan,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :started_at,
    :startup_program_scale_product_id,
    :startup_program_status,
    :status,
    :subscription_id
  ]

  @schema_name "OrganizationSubscription"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "discount" => PolarExpress.Schemas.OrganizationSubscriptionDiscount,
      "pending_change" => PolarExpress.Schemas.OrganizationSubscriptionPendingChange,
      "plan" => PolarExpress.Schemas.OrganizationPlan
    }
  end

  def __date_fields__,
    do: [:canceled_at, :current_period_end, :current_period_start, :ends_at, :started_at]
end
