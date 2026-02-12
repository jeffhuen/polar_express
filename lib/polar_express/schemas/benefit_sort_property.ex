# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitSortProperty do
  @moduledoc "BenefitSortProperty enum. Possible values: `created_at`, `-created_at`, `description`, `-description`, `type`, `-type`, `user_order`, `-user_order`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "description",
    "-description",
    "type",
    "-type",
    "user_order",
    "-user_order"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "BenefitSortProperty"
  def schema_name, do: @schema_name
end
