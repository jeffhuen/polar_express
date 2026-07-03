# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutUpdate do
  @moduledoc """
  CheckoutUpdate

  Update an existing checkout session using an access token.
  """

  @typedoc """
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it. Nullable.
  * `allow_trial` - Whether to enable the trial period for the checkout session. If `false`, the trial period will be disabled, even if the selected product has a trial configured. Nullable.
  * `amount` - Nullable.
  * `currency` - Nullable.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer_billing_address` - Nullable.
  * `customer_billing_name` - Nullable.
  * `customer_email` - Nullable.
  * `customer_ip_address` - Nullable.
  * `customer_metadata` - Key-value object allowing you to store additional information that'll be copied to the created customer.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**. Nullable.
  * `customer_name` - Nullable.
  * `customer_tax_id` - Nullable.
  * `discount_id` - ID of the discount to apply to the checkout. Nullable.
  * `embed_origin` - If you plan to embed the checkout session, set this to the Origin of the embedding page. It'll allow the Polar iframe to communicate with the parent page. Nullable.
  * `is_business_customer` - Nullable.
  * `locale` - Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `product_id` - ID of the product to checkout. Must be present in the checkout's product list. Nullable.
  * `product_price_id` - ID of the product price to checkout. Must correspond to a price present in the checkout's product list. Nullable. **Deprecated.**
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting. If you preset the billing address, this setting will be automatically set to `true`. Nullable.
  * `return_url` - When set, a back button will be shown in the checkout to return to this URL. Nullable.
  * `seats` - Number of seats for seat-based pricing. Nullable.
  * `success_url` - URL where the customer will be redirected after a successful payment.You can add the `checkout_id={CHECKOUT_ID}` query parameter to retrieve the checkout session id. Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :allow_discount_codes,
    :allow_trial,
    :amount,
    :currency,
    :custom_field_data,
    :customer_billing_address,
    :customer_billing_name,
    :customer_email,
    :customer_ip_address,
    :customer_metadata,
    :customer_name,
    :customer_tax_id,
    :discount_id,
    :embed_origin,
    :is_business_customer,
    :locale,
    :metadata,
    :product_id,
    :product_price_id,
    :require_billing_address,
    :return_url,
    :seats,
    :success_url,
    :trial_interval,
    :trial_interval_count
  ]

  @schema_name "CheckoutUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "currency" => PolarExpress.Schemas.PresentmentCurrency,
      "customer_billing_address" => PolarExpress.Schemas.AddressInput,
      "trial_interval" => PolarExpress.Schemas.TrialInterval
    }
  end
end
