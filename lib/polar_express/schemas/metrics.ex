# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Metrics do
  @moduledoc """
  Metrics
  """

  @typedoc """
  * `active_subscriptions` - Nullable.
  * `active_user_by_event` - Nullable.
  * `annual_recurring_revenue` - Nullable.
  * `average_order_value` - Nullable.
  * `average_revenue_per_user` - Nullable.
  * `average_seats_per_customer` - Nullable.
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
  * `churned_seat_customers` - Nullable.
  * `churned_subscriptions` - Nullable.
  * `committed_annual_recurring_revenue` - Nullable.
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
  * `new_seat_customers` - Nullable.
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
  * `seat_customers` - Nullable.
  * `seat_utilization_rate` - Nullable.
  * `seats_claimed` - Nullable.
  * `seats_pending` - Nullable.
  * `seats_total` - Nullable.
  * `succeeded_checkouts` - Nullable.
  * `trial_committed_monthly_recurring_revenue` - Nullable.
  * `trial_monthly_recurring_revenue` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :active_subscriptions,
    :active_user_by_event,
    :annual_recurring_revenue,
    :average_order_value,
    :average_revenue_per_user,
    :average_seats_per_customer,
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
    :churned_seat_customers,
    :churned_subscriptions,
    :committed_annual_recurring_revenue,
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
    :new_seat_customers,
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
    :seat_customers,
    :seat_utilization_rate,
    :seats_claimed,
    :seats_pending,
    :seats_total,
    :succeeded_checkouts,
    :trial_committed_monthly_recurring_revenue,
    :trial_monthly_recurring_revenue
  ]

  @schema_name "Metrics"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "active_subscriptions" => PolarExpress.Schemas.Metric,
      "active_user_by_event" => PolarExpress.Schemas.Metric,
      "annual_recurring_revenue" => PolarExpress.Schemas.Metric,
      "average_order_value" => PolarExpress.Schemas.Metric,
      "average_revenue_per_user" => PolarExpress.Schemas.Metric,
      "average_seats_per_customer" => PolarExpress.Schemas.Metric,
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
      "churned_seat_customers" => PolarExpress.Schemas.Metric,
      "churned_subscriptions" => PolarExpress.Schemas.Metric,
      "committed_annual_recurring_revenue" => PolarExpress.Schemas.Metric,
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
      "new_seat_customers" => PolarExpress.Schemas.Metric,
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
      "seat_customers" => PolarExpress.Schemas.Metric,
      "seat_utilization_rate" => PolarExpress.Schemas.Metric,
      "seats_claimed" => PolarExpress.Schemas.Metric,
      "seats_pending" => PolarExpress.Schemas.Metric,
      "seats_total" => PolarExpress.Schemas.Metric,
      "succeeded_checkouts" => PolarExpress.Schemas.Metric,
      "trial_committed_monthly_recurring_revenue" => PolarExpress.Schemas.Metric,
      "trial_monthly_recurring_revenue" => PolarExpress.Schemas.Metric
    }
  end
end
