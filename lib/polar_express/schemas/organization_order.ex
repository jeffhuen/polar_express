# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationOrder do
  @moduledoc """
  OrganizationOrder
  """

  @typedoc """
  * `billing_reason`
  * `created_at` - Format: date-time.
  * `currency`
  * `id`
  * `invoice_number` - Nullable.
  * `is_invoice_generated`
  * `paid`
  * `product_name`
  * `refunded_amount` - Refunded amount in cents.
  * `status`
  * `total_amount` - Total amount in cents, after discount and tax.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :billing_reason,
    :created_at,
    :currency,
    :id,
    :invoice_number,
    :is_invoice_generated,
    :paid,
    :product_name,
    :refunded_amount,
    :status,
    :total_amount
  ]

  @schema_name "OrganizationOrder"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at]
end
