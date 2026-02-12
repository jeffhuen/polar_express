# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountSortProperty do
  @moduledoc "DiscountSortProperty enum. Possible values: `created_at`, `-created_at`, `name`, `-name`, `code`, `-code`, `redemptions_count`, `-redemptions_count`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "name",
    "-name",
    "code",
    "-code",
    "redemptions_count",
    "-redemptions_count"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "DiscountSortProperty"
  def schema_name, do: @schema_name
end
