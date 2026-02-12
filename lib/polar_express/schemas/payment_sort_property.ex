# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentSortProperty do
  @moduledoc "PaymentSortProperty enum. Possible values: `created_at`, `-created_at`, `status`, `-status`, `amount`, `-amount`, `method`, `-method`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "status",
    "-status",
    "amount",
    "-amount",
    "method",
    "-method"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PaymentSortProperty"
  def schema_name, do: @schema_name
end
