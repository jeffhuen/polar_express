# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductBillingType do
  @moduledoc "ProductBillingType enum. Possible values: `one_time`, `recurring`."

  @type t :: String.t()

  @values [
    "one_time",
    "recurring"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "ProductBillingType"
  def schema_name, do: @schema_name
end
