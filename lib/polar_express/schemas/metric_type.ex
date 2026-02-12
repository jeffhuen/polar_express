# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricType do
  @moduledoc "MetricType enum. Possible values: `scalar`, `currency`, `currency_sub_cent`, `percentage`."

  @type t :: String.t()

  @values [
    "scalar",
    "currency",
    "currency_sub_cent",
    "percentage"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MetricType"
  def schema_name, do: @schema_name
end
