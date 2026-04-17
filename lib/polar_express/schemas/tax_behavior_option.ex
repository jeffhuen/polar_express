# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TaxBehaviorOption do
  @moduledoc "TaxBehaviorOption enum. Possible values: `location`, `inclusive`, `exclusive`."

  @type t :: String.t()

  @values [
    "location",
    "inclusive",
    "exclusive"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TaxBehaviorOption"
  def schema_name, do: @schema_name
end
