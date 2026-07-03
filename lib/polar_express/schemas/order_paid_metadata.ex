# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderPaidMetadata do
  @moduledoc """
  OrderPaidMetadata
  """

  @typedoc """
  * `amount`
  * `applied_balance_amount`
  * `billing_type`
  * `currency`
  * `discount_amount`
  * `discount_id`
  * `net_amount`
  * `order_id`
  * `platform_fee`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `subscription_id`
  * `tax_amount`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :applied_balance_amount,
    :billing_type,
    :currency,
    :discount_amount,
    :discount_id,
    :net_amount,
    :order_id,
    :platform_fee,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :subscription_id,
    :tax_amount
  ]

  @schema_name "OrderPaidMetadata"
  def schema_name, do: @schema_name
end
