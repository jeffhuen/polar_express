# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderItemSchema do
  @moduledoc """
  OrderItemSchema

  An order line item.
  """

  @typedoc """
  * `amount` - Amount in cents, before discounts and taxes.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - Description of the line item charge.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `product_price_id` - Associated price ID, if any. Nullable.
  * `proration` - Whether this charge is due to a proration.
  * `tax_amount` - Sales tax amount in cents.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          modified_at: DateTime.t() | nil,
          product_price_id: String.t() | nil,
          proration: boolean() | nil,
          tax_amount: integer() | nil
        }

  defstruct [
    :amount,
    :created_at,
    :id,
    :label,
    :modified_at,
    :product_price_id,
    :proration,
    :tax_amount
  ]

  @schema_name "OrderItemSchema"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
