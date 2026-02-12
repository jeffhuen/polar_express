# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TimeInterval do
  @moduledoc "TimeInterval enum. Possible values: `year`, `month`, `week`, `day`, `hour`."

  @type t :: String.t()

  @values [
    "year",
    "month",
    "week",
    "day",
    "hour"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TimeInterval"
  def schema_name, do: @schema_name
end
