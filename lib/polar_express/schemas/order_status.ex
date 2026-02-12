# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderStatus do
  @moduledoc "OrderStatus enum. Possible values: `pending`, `paid`, `refunded`, `partially_refunded`."

  @type t :: String.t()

  @values [
    "pending",
    "paid",
    "refunded",
    "partially_refunded"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrderStatus"
  def schema_name, do: @schema_name
end
