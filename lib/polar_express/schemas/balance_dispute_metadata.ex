# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BalanceDisputeMetadata do
  @moduledoc """
  BalanceDisputeMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `dispute_id`
  * `exchange_rate`
  * `fee`
  * `order_created_at`
  * `order_id`
  * `presentment_amount`
  * `presentment_currency`
  * `product_id`
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
    :dispute_id,
    :exchange_rate,
    :fee,
    :order_created_at,
    :order_id,
    :presentment_amount,
    :presentment_currency,
    :product_id,
    :subscription_id,
    :tax_amount,
    :tax_country,
    :tax_state,
    :transaction_id
  ]

  @schema_name "BalanceDisputeMetadata"
  def schema_name, do: @schema_name
end
