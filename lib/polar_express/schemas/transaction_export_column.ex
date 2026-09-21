# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionExportColumn do
  @moduledoc "TransactionExportColumn enum. Possible values: `created_at`, `type`, `product`, `gross_amount`, `tax_amount`, `fees`, `net_amount`, `currency`, `status`, `paid_out_at`, `invoice_number`, `order_id`."

  @type t :: String.t()

  @values [
    "created_at",
    "type",
    "product",
    "gross_amount",
    "tax_amount",
    "fees",
    "net_amount",
    "currency",
    "status",
    "paid_out_at",
    "invoice_number",
    "order_id"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TransactionExportColumn"
  def schema_name, do: @schema_name
end
