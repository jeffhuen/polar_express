# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PrecheckEntity do
  @moduledoc "PrecheckEntity enum. Possible values: `products`, `prices`, `customers`, `subscriptions`."

  @type t :: String.t()

  @values [
    "products",
    "prices",
    "customers",
    "subscriptions"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PrecheckEntity"
  def schema_name, do: @schema_name
end
