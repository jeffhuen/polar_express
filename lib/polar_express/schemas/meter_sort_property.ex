# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterSortProperty do
  @moduledoc "MeterSortProperty enum. Possible values: `created_at`, `-created_at`, `name`, `-name`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "name",
    "-name"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MeterSortProperty"
  def schema_name, do: @schema_name
end
