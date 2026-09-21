# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AdjustPriceAction do
  @moduledoc """
  AdjustPriceAction

  A recommendation to review a product's pricing, with a reference point.

  The suggested amount is a *reference*, not a mandate: it's the list price
  that would restore the target gross margin at the current cost to serve,
  ignoring demand elasticity. It applies to new customers only — existing
  subscriptions keep their price. The client routes to the product's pricing
  editor; nothing is ever applied automatically.
  """

  @typedoc """
  * `currency` - ISO currency code of the amounts.
  * `current_price_amount` - The product's current list price, in cents.
  * `label` - Button label.
  * `product_id` - The product whose pricing to review. Format: uuid4.
  * `product_name` - Display name of the product.
  * `suggested_price_amount` - Reference list price (cents) that would restore the target gross margin at the current cost to serve. Null when no meaningful suggestion can be computed. Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :currency,
    :current_price_amount,
    :label,
    :product_id,
    :product_name,
    :suggested_price_amount,
    :type
  ]

  @schema_name "AdjustPriceAction"
  def schema_name, do: @schema_name
end
