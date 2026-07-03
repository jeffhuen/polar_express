# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutConfirmStripe do
  @moduledoc """
  CheckoutConfirmStripe

  Confirm a checkout session using a Stripe confirmation token.
  """

  @typedoc """
  * `allow_trial` - Disable the trial period for the checkout session. It's mainly useful when the trial is blocked because the customer already redeemed one. Nullable.
  * `amount` - Nullable.
  * `confirmation_token_id` - ID of the Stripe confirmation token. Required for fixed prices and custom prices. Nullable.
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
  @type t :: %__MODULE__{}

  defstruct [
    :allow_trial,
    :amount,
    :confirmation_token_id,
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

  @schema_name "CheckoutConfirmStripe"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_billing_address" => PolarExpress.Schemas.AddressInput
    }
  end
end
