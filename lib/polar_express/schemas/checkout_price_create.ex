# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutPriceCreate do
  @moduledoc """
  CheckoutPriceCreate

  Create a new checkout session from a product price.

  **Deprecated**: Use `CheckoutProductsCreate` instead.

  Metadata set on the checkout will be copied
  to the resulting order and/or subscription.
  """

  @typedoc """
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it.
  * `allow_trial` - Whether to enable the trial period for the checkout session. If `false`, the trial period will be disabled, even if the selected product has a trial configured.
  * `amount` - Nullable.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer_billing_address` - Nullable.
  * `customer_billing_name` - Nullable.
  * `customer_email` - Nullable.
  * `customer_id` - ID of an existing customer in the organization. The customer data will be pre-filled in the checkout form. The resulting order will be linked to this customer. Nullable.
  * `customer_ip_address` - Nullable.
  * `customer_metadata` - Key-value object allowing you to store additional information that'll be copied to the created customer.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `customer_name` - Nullable.
  * `customer_tax_id` - Nullable.
  * `discount_id` - ID of the discount to apply to the checkout. Nullable.
  * `embed_origin` - If you plan to embed the checkout session, set this to the Origin of the embedding page. It'll allow the Polar iframe to communicate with the parent page. Nullable.
  * `external_customer_id` - ID of the customer in your system. If a matching customer exists on Polar, the resulting order will be linked to this customer. Otherwise, a new customer will be created with this external ID set. Nullable.
  * `is_business_customer` - Whether the customer is a business or an individual. If `true`, the customer will be required to fill their full billing address and billing name.
  * `locale` - Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `product_price_id` - ID of the product price to checkout. Format: uuid4.
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting. If you preset the billing address, this setting will be automatically set to `true`.
  * `return_url` - When set, a back button will be shown in the checkout to return to this URL. Nullable.
  * `seats` - Number of seats for seat-based pricing. Required for seat-based products. Nullable.
  * `subscription_id` - ID of a subscription to upgrade. It must be on a free pricing. If checkout is successful, metadata set on this checkout will be copied to the subscription, and existing keys will be overwritten. Nullable.
  * `success_url` - URL where the customer will be redirected after a successful payment.You can add the `checkout_id={CHECKOUT_ID}` query parameter to retrieve the checkout session id. Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  """
  @type t :: %__MODULE__{
          allow_discount_codes: boolean() | nil,
          allow_trial: boolean() | nil,
          amount: integer() | nil,
          custom_field_data:
            %{String.t() => String.t() | integer() | boolean() | DateTime.t() | nil} | nil,
          customer_billing_address: PolarExpress.Schemas.AddressInput.t() | nil,
          customer_billing_name: String.t() | nil,
          customer_email: String.t() | nil,
          customer_id: String.t() | nil,
          customer_ip_address: String.t() | nil,
          customer_metadata:
            %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          customer_name: String.t() | nil,
          customer_tax_id: String.t() | nil,
          discount_id: String.t() | nil,
          embed_origin: String.t() | nil,
          external_customer_id: String.t() | nil,
          is_business_customer: boolean() | nil,
          locale: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          product_price_id: String.t() | nil,
          require_billing_address: boolean() | nil,
          return_url: String.t() | nil,
          seats: integer() | nil,
          subscription_id: String.t() | nil,
          success_url: String.t() | nil,
          trial_interval: PolarExpress.Schemas.TrialInterval.t() | nil,
          trial_interval_count: integer() | nil
        }

  defstruct [
    :allow_discount_codes,
    :allow_trial,
    :amount,
    :custom_field_data,
    :customer_billing_address,
    :customer_billing_name,
    :customer_email,
    :customer_id,
    :customer_ip_address,
    :customer_metadata,
    :customer_name,
    :customer_tax_id,
    :discount_id,
    :embed_origin,
    :external_customer_id,
    :is_business_customer,
    :locale,
    :metadata,
    :product_price_id,
    :require_billing_address,
    :return_url,
    :seats,
    :subscription_id,
    :success_url,
    :trial_interval,
    :trial_interval_count
  ]

  @schema_name "CheckoutPriceCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_billing_address" => PolarExpress.Schemas.AddressInput,
      "trial_interval" => PolarExpress.Schemas.TrialInterval
    }
  end
end
