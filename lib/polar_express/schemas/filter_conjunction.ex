# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FilterConjunction do
  @moduledoc "FilterConjunction enum. Possible values: `and`, `or`."

  @type t :: String.t()

  @values [
    "and",
    "or"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "FilterConjunction"
  def schema_name, do: @schema_name
end
