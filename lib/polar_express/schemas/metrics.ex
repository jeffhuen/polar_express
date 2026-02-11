# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Metrics do
  @moduledoc """
  Metrics
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
          active_subscriptions: PolarExpress.Schemas.Metric.t() | nil,
          active_user_by_event: PolarExpress.Schemas.Metric.t() | nil,
          average_order_value: PolarExpress.Schemas.Metric.t() | nil,
          average_revenue_per_user: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_customer_service: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_low_quality: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_missing_features: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_other: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_switched_service: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_too_complex: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_too_expensive: PolarExpress.Schemas.Metric.t() | nil,
          canceled_subscriptions_unused: PolarExpress.Schemas.Metric.t() | nil,
          cashflow: PolarExpress.Schemas.Metric.t() | nil,
          checkouts: PolarExpress.Schemas.Metric.t() | nil,
          checkouts_conversion: PolarExpress.Schemas.Metric.t() | nil,
          churn_rate: PolarExpress.Schemas.Metric.t() | nil,
          churned_subscriptions: PolarExpress.Schemas.Metric.t() | nil,
          committed_monthly_recurring_revenue: PolarExpress.Schemas.Metric.t() | nil,
          committed_subscriptions: PolarExpress.Schemas.Metric.t() | nil,
          cost_per_user: PolarExpress.Schemas.Metric.t() | nil,
          costs: PolarExpress.Schemas.Metric.t() | nil,
          cumulative_costs: PolarExpress.Schemas.Metric.t() | nil,
          cumulative_revenue: PolarExpress.Schemas.Metric.t() | nil,
          gross_margin: PolarExpress.Schemas.Metric.t() | nil,
          gross_margin_percentage: PolarExpress.Schemas.Metric.t() | nil,
          ltv: PolarExpress.Schemas.Metric.t() | nil,
          monthly_recurring_revenue: PolarExpress.Schemas.Metric.t() | nil,
          net_average_order_value: PolarExpress.Schemas.Metric.t() | nil,
          net_cumulative_revenue: PolarExpress.Schemas.Metric.t() | nil,
          net_revenue: PolarExpress.Schemas.Metric.t() | nil,
          new_subscriptions: PolarExpress.Schemas.Metric.t() | nil,
          new_subscriptions_net_revenue: PolarExpress.Schemas.Metric.t() | nil,
          new_subscriptions_revenue: PolarExpress.Schemas.Metric.t() | nil,
          one_time_products: PolarExpress.Schemas.Metric.t() | nil,
          one_time_products_net_revenue: PolarExpress.Schemas.Metric.t() | nil,
          one_time_products_revenue: PolarExpress.Schemas.Metric.t() | nil,
          orders: PolarExpress.Schemas.Metric.t() | nil,
          renewed_subscriptions: PolarExpress.Schemas.Metric.t() | nil,
          renewed_subscriptions_net_revenue: PolarExpress.Schemas.Metric.t() | nil,
          renewed_subscriptions_revenue: PolarExpress.Schemas.Metric.t() | nil,
          revenue: PolarExpress.Schemas.Metric.t() | nil,
          succeeded_checkouts: PolarExpress.Schemas.Metric.t() | nil
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

  @schema_name "Metrics"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "active_subscriptions" => PolarExpress.Schemas.Metric,
      "active_user_by_event" => PolarExpress.Schemas.Metric,
      "average_order_value" => PolarExpress.Schemas.Metric,
      "average_revenue_per_user" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_customer_service" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_low_quality" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_missing_features" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_other" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_switched_service" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_too_complex" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_too_expensive" => PolarExpress.Schemas.Metric,
      "canceled_subscriptions_unused" => PolarExpress.Schemas.Metric,
      "cashflow" => PolarExpress.Schemas.Metric,
      "checkouts" => PolarExpress.Schemas.Metric,
      "checkouts_conversion" => PolarExpress.Schemas.Metric,
      "churn_rate" => PolarExpress.Schemas.Metric,
      "churned_subscriptions" => PolarExpress.Schemas.Metric,
      "committed_monthly_recurring_revenue" => PolarExpress.Schemas.Metric,
      "committed_subscriptions" => PolarExpress.Schemas.Metric,
      "cost_per_user" => PolarExpress.Schemas.Metric,
      "costs" => PolarExpress.Schemas.Metric,
      "cumulative_costs" => PolarExpress.Schemas.Metric,
      "cumulative_revenue" => PolarExpress.Schemas.Metric,
      "gross_margin" => PolarExpress.Schemas.Metric,
      "gross_margin_percentage" => PolarExpress.Schemas.Metric,
      "ltv" => PolarExpress.Schemas.Metric,
      "monthly_recurring_revenue" => PolarExpress.Schemas.Metric,
      "net_average_order_value" => PolarExpress.Schemas.Metric,
      "net_cumulative_revenue" => PolarExpress.Schemas.Metric,
      "net_revenue" => PolarExpress.Schemas.Metric,
      "new_subscriptions" => PolarExpress.Schemas.Metric,
      "new_subscriptions_net_revenue" => PolarExpress.Schemas.Metric,
      "new_subscriptions_revenue" => PolarExpress.Schemas.Metric,
      "one_time_products" => PolarExpress.Schemas.Metric,
      "one_time_products_net_revenue" => PolarExpress.Schemas.Metric,
      "one_time_products_revenue" => PolarExpress.Schemas.Metric,
      "orders" => PolarExpress.Schemas.Metric,
      "renewed_subscriptions" => PolarExpress.Schemas.Metric,
      "renewed_subscriptions_net_revenue" => PolarExpress.Schemas.Metric,
      "renewed_subscriptions_revenue" => PolarExpress.Schemas.Metric,
      "revenue" => PolarExpress.Schemas.Metric,
      "succeeded_checkouts" => PolarExpress.Schemas.Metric
    }
  end
end
