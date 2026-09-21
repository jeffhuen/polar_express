# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RecurringInterval do
  @moduledoc "RecurringInterval enum. Possible values: `day`, `week`, `month`, `year`."

  @type t :: String.t()

  @values [
    "day",
    "week",
    "month",
    "year"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "RecurringInterval"
  def schema_name, do: @schema_name
end
