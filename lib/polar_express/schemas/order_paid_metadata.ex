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
  @type t :: %__MODULE__{
          amount: integer() | nil,
          applied_balance_amount: integer() | nil,
          billing_type: String.t() | nil,
          currency: String.t() | nil,
          discount_amount: integer() | nil,
          discount_id: String.t() | nil,
          net_amount: integer() | nil,
          order_id: String.t() | nil,
          platform_fee: integer() | nil,
          product_id: String.t() | nil,
          recurring_interval: String.t() | nil,
          recurring_interval_count: integer() | nil,
          subscription_id: String.t() | nil,
          tax_amount: integer() | nil
        }

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
