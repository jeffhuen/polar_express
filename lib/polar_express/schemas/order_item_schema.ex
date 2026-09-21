# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderItemSchema do
  @moduledoc """
  OrderItemSchema

  An order line item.
  """

  @typedoc """
  * `amount` - Amount in cents, before discounts and taxes.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `end_timestamp` - End of the period covered by this line item, if any. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - Description of the line item charge.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `product_price_id` - Associated price ID, if any. Nullable.
  * `proration` - Whether this charge is due to a proration.
  * `start_timestamp` - Start of the period covered by this line item, if any. Nullable.
  * `tax_amount` - Sales tax amount in cents.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :created_at,
    :end_timestamp,
    :id,
    :label,
    :modified_at,
    :product_price_id,
    :proration,
    :start_timestamp,
    :tax_amount
  ]

  @schema_name "OrderItemSchema"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :end_timestamp, :modified_at, :start_timestamp]
end
