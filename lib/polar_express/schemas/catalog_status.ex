# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CatalogStatus do
  @moduledoc "CatalogStatus enum. Possible values: `draft`, `live`, `archived`."

  @type t :: String.t()

  @values [
    "draft",
    "live",
    "archived"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CatalogStatus"
  def schema_name, do: @schema_name
end
