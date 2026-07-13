# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BalanceCreditOrderMetadata do
  @moduledoc """
  BalanceCreditOrderMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `exchange_rate`
  * `fee`
  * `order_id`
  * `product_id`
  * `subscription_id`
  * `tax_amount`
  * `tax_country` - Nullable.
  * `tax_state` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :exchange_rate,
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
