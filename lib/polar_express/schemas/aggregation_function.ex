# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AggregationFunction do
  @moduledoc "AggregationFunction enum. Possible values: `count`, `sum`, `max`, `min`, `avg`, `unique`."

  @type t :: String.t()

  @values [
    "count",
    "sum",
    "max",
    "min",
    "avg",
    "unique"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "AggregationFunction"
  def schema_name, do: @schema_name
end
