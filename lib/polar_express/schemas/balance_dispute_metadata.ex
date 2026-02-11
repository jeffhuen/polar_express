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
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          dispute_id: String.t() | nil,
          exchange_rate: float() | nil,
          fee: integer() | nil,
          order_created_at: String.t() | nil,
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
