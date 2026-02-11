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
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          exchange_rate: float() | nil,
          fee: integer() | nil,
          net_amount: integer() | nil,
          order_id: String.t() | nil,
          presentment_amount: integer() | nil,
          presentment_currency: String.t() | nil,
          product_id: String.t() | nil,
          subscription_id: String.t() | nil,
          tax_amount: integer() | nil,
          tax_country: String.t() | nil,
          tax_state: String.t() | nil,
          transaction_id: String.t() | nil
        }

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
