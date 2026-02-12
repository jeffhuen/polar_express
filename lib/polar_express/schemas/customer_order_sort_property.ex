# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderSortProperty do
  @moduledoc "CustomerOrderSortProperty enum. Possible values: `created_at`, `-created_at`, `amount`, `-amount`, `net_amount`, `-net_amount`, `product`, `-product`, `subscription`, `-subscription`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "amount",
    "-amount",
    "net_amount",
    "-net_amount",
    "product",
    "-product",
    "subscription",
    "-subscription"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerOrderSortProperty"
  def schema_name, do: @schema_name
end
