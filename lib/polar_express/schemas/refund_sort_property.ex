# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefundSortProperty do
  @moduledoc "RefundSortProperty enum. Possible values: `created_at`, `-created_at`, `amount`, `-amount`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "amount",
    "-amount"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "RefundSortProperty"
  def schema_name, do: @schema_name
end
