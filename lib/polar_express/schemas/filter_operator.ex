# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FilterOperator do
  @moduledoc "FilterOperator enum. Possible values: `eq`, `ne`, `gt`, `gte`, `lt`, `lte`, `like`, `not_like`."

  @type t :: String.t()

  @values [
    "eq",
    "ne",
    "gt",
    "gte",
    "lt",
    "lte",
    "like",
    "not_like"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "FilterOperator"
  def schema_name, do: @schema_name
end
