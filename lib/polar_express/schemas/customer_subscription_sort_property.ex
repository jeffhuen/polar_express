# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionSortProperty do
  @moduledoc "CustomerSubscriptionSortProperty enum. Possible values: `started_at`, `-started_at`, `amount`, `-amount`, `status`, `-status`, `organization`, `-organization`, `product`, `-product`."

  @type t :: String.t()

  @values [
    "started_at",
    "-started_at",
    "amount",
    "-amount",
    "status",
    "-status",
    "organization",
    "-organization",
    "product",
    "-product"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerSubscriptionSortProperty"
  def schema_name, do: @schema_name
end
