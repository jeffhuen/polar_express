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
  @type t :: %__MODULE__{
          active_subscriptions: integer() | float() | nil,
          active_user_by_event: integer() | float() | nil,
          average_order_value: integer() | float() | nil,
          average_revenue_per_user: integer() | float() | nil,
          canceled_subscriptions: integer() | float() | nil,
          canceled_subscriptions_customer_service: integer() | float() | nil,
          canceled_subscriptions_low_quality: integer() | float() | nil,
          canceled_subscriptions_missing_features: integer() | float() | nil,
          canceled_subscriptions_other: integer() | float() | nil,
          canceled_subscriptions_switched_service: integer() | float() | nil,
          canceled_subscriptions_too_complex: integer() | float() | nil,
          canceled_subscriptions_too_expensive: integer() | float() | nil,
          canceled_subscriptions_unused: integer() | float() | nil,
          cashflow: integer() | float() | nil,
          checkouts: integer() | float() | nil,
          checkouts_conversion: integer() | float() | nil,
          churn_rate: integer() | float() | nil,
          churned_subscriptions: integer() | float() | nil,
          committed_monthly_recurring_revenue: integer() | float() | nil,
          committed_subscriptions: integer() | float() | nil,
          cost_per_user: integer() | float() | nil,
          costs: integer() | float() | nil,
          cumulative_costs: integer() | float() | nil,
          cumulative_revenue: integer() | float() | nil,
          gross_margin: integer() | float() | nil,
          gross_margin_percentage: integer() | float() | nil,
          ltv: integer() | float() | nil,
          monthly_recurring_revenue: integer() | float() | nil,
          net_average_order_value: integer() | float() | nil,
          net_cumulative_revenue: integer() | float() | nil,
          net_revenue: integer() | float() | nil,
          new_subscriptions: integer() | float() | nil,
          new_subscriptions_net_revenue: integer() | float() | nil,
          new_subscriptions_revenue: integer() | float() | nil,
          one_time_products: integer() | float() | nil,
          one_time_products_net_revenue: integer() | float() | nil,
          one_time_products_revenue: integer() | float() | nil,
          orders: integer() | float() | nil,
          renewed_subscriptions: integer() | float() | nil,
          renewed_subscriptions_net_revenue: integer() | float() | nil,
          renewed_subscriptions_revenue: integer() | float() | nil,
          revenue: integer() | float() | nil,
          succeeded_checkouts: integer() | float() | nil
        }

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
