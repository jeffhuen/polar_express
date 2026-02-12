# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSortProperty do
  @moduledoc "CustomerSortProperty enum. Possible values: `created_at`, `-created_at`, `email`, `-email`, `name`, `-name`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "email",
    "-email",
    "name",
    "-name"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerSortProperty"
  def schema_name, do: @schema_name
end
