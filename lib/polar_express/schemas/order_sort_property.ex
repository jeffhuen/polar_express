# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderSortProperty do
  @moduledoc "OrderSortProperty enum. Possible values: `created_at`, `-created_at`, `status`, `-status`, `invoice_number`, `-invoice_number`, `amount`, `-amount`, `net_amount`, `-net_amount`, `customer`, `-customer`, `product`, `-product`, `discount`, `-discount`, `subscription`, `-subscription`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "status",
    "-status",
    "invoice_number",
    "-invoice_number",
    "amount",
    "-amount",
    "net_amount",
    "-net_amount",
    "customer",
    "-customer",
    "product",
    "-product",
    "discount",
    "-discount",
    "subscription",
    "-subscription"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrderSortProperty"
  def schema_name, do: @schema_name
end
