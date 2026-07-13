# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderCreate do
  @moduledoc """
  OrderCreate

  Schema to create a draft order for an off-session charge.
  """

  @typedoc """
  * `amount` - A custom amount to charge, in the smallest currency unit. Overrides the product's price; defaults to the product's configured price (0 for free products). A positive amount must be at least the currency's minimum. Nullable.
  * `currency` - The currency to charge in (ISO 4217, lowercase, e.g. `usd`). Defaults to the organization's default currency; specify it to force a different one, or when the product isn't priced in the organization's default currency. Nullable.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer_id` - The ID of the customer the order is for. Must belong to the order's organization. Format: uuid4.
  * `description` - A custom description for the order's line item, shown on the invoice and receipt (e.g. `5,000 tokens`). Defaults to the product name. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `organization_id` - The ID of the organization the order belongs to. **Required unless you use an organization token.** The customer and product must belong to this organization. Nullable.
  * `product_id` - The ID of the one-time product to charge for. Must belong to the order's organization. Only fixed-price and free products are supported. Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :custom_field_data,
    :customer_id,
    :description,
    :metadata,
    :organization_id,
    :product_id
  ]

  @schema_name "OrderCreate"
  def schema_name, do: @schema_name
end
