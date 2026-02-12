# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLinkSortProperty do
  @moduledoc "CheckoutLinkSortProperty enum. Possible values: `created_at`, `-created_at`, `label`, `-label`, `success_url`, `-success_url`, `allow_discount_codes`, `-allow_discount_codes`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "label",
    "-label",
    "success_url",
    "-success_url",
    "allow_discount_codes",
    "-allow_discount_codes"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CheckoutLinkSortProperty"
  def schema_name, do: @schema_name
end
