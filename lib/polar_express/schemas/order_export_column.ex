# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderExportColumn do
  @moduledoc "OrderExportColumn enum. Possible values: `email`, `created_at`, `product`, `net_amount`, `currency`, `status`, `invoice_number`, `customer_name`, `billing_name`, `billing_country`, `subtotal_amount`, `discount_amount`, `tax_amount`, `total_amount`, `refunded_amount`, `billing_reason`."

  @type t :: String.t()

  @values [
    "email",
    "created_at",
    "product",
    "net_amount",
    "currency",
    "status",
    "invoice_number",
    "customer_name",
    "billing_name",
    "billing_country",
    "subtotal_amount",
    "discount_amount",
    "tax_amount",
    "total_amount",
    "refunded_amount",
    "billing_reason"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrderExportColumn"
  def schema_name, do: @schema_name
end
