# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BalanceOrderMetadata do
  @moduledoc """
  BalanceOrderMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `exchange_rate`
  * `fee`
  * `net_amount`
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
    :exchange_rate,
    :fee,
    :net_amount,
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

  @schema_name "BalanceOrderMetadata"
  def schema_name, do: @schema_name
end
