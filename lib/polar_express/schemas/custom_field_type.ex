# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldType do
  @moduledoc "CustomFieldType enum. Possible values: `text`, `number`, `date`, `checkbox`, `select`."

  @type t :: String.t()

  @values [
    "text",
    "number",
    "date",
    "checkbox",
    "select"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomFieldType"
  def schema_name, do: @schema_name
end
