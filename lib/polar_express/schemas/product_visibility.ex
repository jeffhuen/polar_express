# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductVisibility do
  @moduledoc "ProductVisibility enum. Possible values: `draft`, `private`, `public`."

  @type t :: String.t()

  @values [
    "draft",
    "private",
    "public"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "ProductVisibility"
  def schema_name, do: @schema_name
end
