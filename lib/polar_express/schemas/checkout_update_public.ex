# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutUpdatePublic do
  @moduledoc """
  CheckoutUpdatePublic

  Update an existing checkout session using the client secret.
  """

  @typedoc """
  * `allow_trial` - Disable the trial period for the checkout session. It's mainly useful when the trial is blocked because the customer already redeemed one. Nullable.
  * `amount` - Nullable.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer_billing_address` - Nullable.
  * `customer_billing_name` - Nullable.
  * `customer_email` - Nullable.
  * `customer_name` - Nullable.
  * `customer_tax_id` - Nullable.
  * `discount_code` - Discount code to apply to the checkout. Nullable.
  * `is_business_customer` - Nullable.
  * `locale` - Nullable.
  * `product_id` - ID of the product to checkout. Must be present in the checkout's product list. Nullable.
  * `product_price_id` - ID of the product price to checkout. Must correspond to a price present in the checkout's product list. Nullable. **Deprecated.**
  * `seats` - Number of seats for seat-based pricing. Nullable.
  """
  @type t :: %__MODULE__{
          allow_trial: boolean() | nil,
          amount: integer() | nil,
          custom_field_data:
            %{String.t() => String.t() | integer() | boolean() | DateTime.t() | nil} | nil,
          customer_billing_address: PolarExpress.Schemas.AddressInput.t() | nil,
          customer_billing_name: String.t() | nil,
          customer_email: String.t() | nil,
          customer_name: String.t() | nil,
          customer_tax_id: String.t() | nil,
          discount_code: String.t() | nil,
          is_business_customer: boolean() | nil,
          locale: String.t() | nil,
          product_id: String.t() | nil,
          product_price_id: String.t() | nil,
          seats: integer() | nil
        }

  defstruct [
    :allow_trial,
    :amount,
    :custom_field_data,
    :customer_billing_address,
    :customer_billing_name,
    :customer_email,
    :customer_name,
    :customer_tax_id,
    :discount_code,
    :is_business_customer,
    :locale,
    :product_id,
    :product_price_id,
    :seats
  ]

  @schema_name "CheckoutUpdatePublic"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
