# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ColumnFormat do
  @moduledoc "ColumnFormat enum. Possible values: `text`, `currency`, `datetime`, `badge`, `avatar`."

  @type t :: String.t()

  @values [
    "text",
    "currency",
    "datetime",
    "badge",
    "avatar"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "ColumnFormat"
  def schema_name, do: @schema_name
end
