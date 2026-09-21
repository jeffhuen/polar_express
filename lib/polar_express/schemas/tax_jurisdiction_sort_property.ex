# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TaxJurisdictionSortProperty do
  @moduledoc "TaxJurisdictionSortProperty enum. Possible values: `tax_amount`, `-tax_amount`, `order_count`, `-order_count`, `country`, `-country`."

  @type t :: String.t()

  @values [
    "tax_amount",
    "-tax_amount",
    "order_count",
    "-order_count",
    "country",
    "-country"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TaxJurisdictionSortProperty"
  def schema_name, do: @schema_name
end
