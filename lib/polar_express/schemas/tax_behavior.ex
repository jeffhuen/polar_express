# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TaxBehavior do
  @moduledoc "TaxBehavior enum. Possible values: `inclusive`, `exclusive`."

  @type t :: String.t()

  @values [
    "inclusive",
    "exclusive"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TaxBehavior"
  def schema_name, do: @schema_name
end
