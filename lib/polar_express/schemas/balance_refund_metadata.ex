# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BalanceRefundMetadata do
  @moduledoc """
  BalanceRefundMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `exchange_rate`
  * `fee`
  * `order_created_at`
  * `order_id`
  * `presentment_amount`
  * `presentment_currency`
  * `product_id`
  * `refund_id`
  * `refundable_amount`
  * `subscription_id`
  * `tax_amount`
  * `tax_country` - Nullable.
  * `tax_state` - Nullable.
  * `transaction_id`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :exchange_rate,
    :fee,
    :order_created_at,
    :order_id,
    :presentment_amount,
    :presentment_currency,
    :product_id,
    :refund_id,
    :refundable_amount,
    :subscription_id,
    :tax_amount,
    :tax_country,
    :tax_state,
    :transaction_id
  ]

  @schema_name "BalanceRefundMetadata"
  def schema_name, do: @schema_name
end
