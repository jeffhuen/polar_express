# File generated from our OpenAPI spec
defmodule PolarExpress.Params.OrdersExportOrdersParams do
  @moduledoc "Parameters for orders export orders."

  @typedoc """
  * `columns` - Columns to include in the CSV, in order. Defaults to email, created_at, product, net_amount, currency, status and invoice_number.
  * `created_after` - Only include orders created after this date. Must include a UTC offset.
  * `created_before` - Only include orders created before this date. Must include a UTC offset.
  * `organization_id` - Filter by organization ID.
  * `product_id` - Filter by product ID.
  * `status` - Filter by order status.
  * `timezone` - Time zone used to render dates in the CSV.
  """
  @type t :: %__MODULE__{
          columns: map() | nil,
          created_after: String.t() | nil,
          created_before: String.t() | nil,
          organization_id: map() | nil,
          product_id: map() | nil,
          status: map() | nil,
          timezone: String.t() | nil
        }

  defstruct [
    :columns,
    :created_after,
    :created_before,
    :organization_id,
    :product_id,
    :status,
    :timezone
  ]
end
