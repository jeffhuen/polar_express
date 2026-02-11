# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BalanceCreditOrderMetadata do
  @moduledoc """
  BalanceCreditOrderMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `fee`
  * `order_id`
  * `product_id`
  * `subscription_id`
  * `tax_amount`
  * `tax_country` - Nullable.
  * `tax_state` - Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          fee: integer() | nil,
          order_id: String.t() | nil,
          product_id: String.t() | nil,
          subscription_id: String.t() | nil,
          tax_amount: integer() | nil,
          tax_country: String.t() | nil,
          tax_state: String.t() | nil
        }

  defstruct [
    :amount,
    :currency,
    :fee,
    :order_id,
    :product_id,
    :subscription_id,
    :tax_amount,
    :tax_country,
    :tax_state
  ]

  @schema_name "BalanceCreditOrderMetadata"
  def schema_name, do: @schema_name
end
