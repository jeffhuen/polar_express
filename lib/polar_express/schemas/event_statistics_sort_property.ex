# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventStatisticsSortProperty do
  @moduledoc "EventStatisticsSortProperty enum. Possible values: `name`, `-name`, `occurrences`, `-occurrences`, `total`, `-total`, `average`, `-average`, `p95`, `-p95`, `p99`, `-p99`."

  @type t :: String.t()

  @values [
    "name",
    "-name",
    "occurrences",
    "-occurrences",
    "total",
    "-total",
    "average",
    "-average",
    "p95",
    "-p95",
    "p99",
    "-p99"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "EventStatisticsSortProperty"
  def schema_name, do: @schema_name
end
