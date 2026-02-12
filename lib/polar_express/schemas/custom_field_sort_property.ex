# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldSortProperty do
  @moduledoc "CustomFieldSortProperty enum. Possible values: `created_at`, `-created_at`, `slug`, `-slug`, `name`, `-name`, `type`, `-type`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "slug",
    "-slug",
    "name",
    "-name",
    "type",
    "-type"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomFieldSortProperty"
  def schema_name, do: @schema_name
end
