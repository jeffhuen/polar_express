# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricsTotals do
  @moduledoc """
  MetricsTotals
  """

  @typedoc """
  * `active_subscriptions` - Nullable.
  * `active_user_by_event` - Nullable.
  * `average_order_value` - Nullable.
  * `average_revenue_per_user` - Nullable.
  * `canceled_subscriptions` - Nullable.
  * `canceled_subscriptions_customer_service` - Nullable.
  * `canceled_subscriptions_low_quality` - Nullable.
  * `canceled_subscriptions_missing_features` - Nullable.
  * `canceled_subscriptions_other` - Nullable.
  * `canceled_subscriptions_switched_service` - Nullable.
  * `canceled_subscriptions_too_complex` - Nullable.
  * `canceled_subscriptions_too_expensive` - Nullable.
  * `canceled_subscriptions_unused` - Nullable.
  * `cashflow` - Nullable.
  * `checkouts` - Nullable.
  * `checkouts_conversion` - Nullable.
  * `churn_rate` - Nullable.
  * `churned_subscriptions` - Nullable.
  * `committed_monthly_recurring_revenue` - Nullable.
  * `committed_subscriptions` - Nullable.
  * `cost_per_user` - Nullable.
  * `costs` - Nullable.
  * `cumulative_costs` - Nullable.
  * `cumulative_revenue` - Nullable.
  * `gross_margin` - Nullable.
  * `gross_margin_percentage` - Nullable.
  * `ltv` - Nullable.
  * `monthly_recurring_revenue` - Nullable.
  * `net_average_order_value` - Nullable.
  * `net_cumulative_revenue` - Nullable.
  * `net_revenue` - Nullable.
  * `new_subscriptions` - Nullable.
  * `new_subscriptions_net_revenue` - Nullable.
  * `new_subscriptions_revenue` - Nullable.
  * `one_time_products` - Nullable.
  * `one_time_products_net_revenue` - Nullable.
  * `one_time_products_revenue` - Nullable.
  * `orders` - Nullable.
  * `renewed_subscriptions` - Nullable.
  * `renewed_subscriptions_net_revenue` - Nullable.
  * `renewed_subscriptions_revenue` - Nullable.
  * `revenue` - Nullable.
  * `succeeded_checkouts` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :active_subscriptions,
    :active_user_by_event,
    :average_order_value,
    :average_revenue_per_user,
    :canceled_subscriptions,
    :canceled_subscriptions_customer_service,
    :canceled_subscriptions_low_quality,
    :canceled_subscriptions_missing_features,
    :canceled_subscriptions_other,
    :canceled_subscriptions_switched_service,
    :canceled_subscriptions_too_complex,
    :canceled_subscriptions_too_expensive,
    :canceled_subscriptions_unused,
    :cashflow,
    :checkouts,
    :checkouts_conversion,
    :churn_rate,
    :churned_subscriptions,
    :committed_monthly_recurring_revenue,
    :committed_subscriptions,
    :cost_per_user,
    :costs,
    :cumulative_costs,
    :cumulative_revenue,
    :gross_margin,
    :gross_margin_percentage,
    :ltv,
    :monthly_recurring_revenue,
    :net_average_order_value,
    :net_cumulative_revenue,
    :net_revenue,
    :new_subscriptions,
    :new_subscriptions_net_revenue,
    :new_subscriptions_revenue,
    :one_time_products,
    :one_time_products_net_revenue,
    :one_time_products_revenue,
    :orders,
    :renewed_subscriptions,
    :renewed_subscriptions_net_revenue,
    :renewed_subscriptions_revenue,
    :revenue,
    :succeeded_checkouts
  ]

  @schema_name "MetricsTotals"
  def schema_name, do: @schema_name
end
