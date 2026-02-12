# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductSortProperty do
  @moduledoc "ProductSortProperty enum. Possible values: `created_at`, `-created_at`, `name`, `-name`, `price_amount_type`, `-price_amount_type`, `price_amount`, `-price_amount`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "name",
    "-name",
    "price_amount_type",
    "-price_amount_type",
    "price_amount",
    "-price_amount"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "ProductSortProperty"
  def schema_name, do: @schema_name
end
