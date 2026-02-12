# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutSortProperty do
  @moduledoc "CheckoutSortProperty enum. Possible values: `created_at`, `-created_at`, `expires_at`, `-expires_at`, `status`, `-status`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "expires_at",
    "-expires_at",
    "status",
    "-status"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CheckoutSortProperty"
  def schema_name, do: @schema_name
end
