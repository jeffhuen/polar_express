# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLinkCreateProductPrice do
  @moduledoc """
  CheckoutLinkCreateProductPrice

  Schema to create a new checkout link from a a single product price.

  **Deprecated**: Use `CheckoutLinkCreateProducts` instead.
  """

  @typedoc """
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it.
  * `discount_id` - ID of the discount to apply to the checkout. If the discount is not applicable anymore when opening the checkout link, it'll be ignored. Nullable.
  * `label` - Optional label to distinguish links internally Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `payment_processor` - Payment processor to use. Currently only Stripe is supported.
  * `product_price_id` - Format: uuid4.
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting.
  * `success_url` - URL where the customer will be redirected after a successful payment.You can add the `checkout_id={CHECKOUT_ID}` query parameter to retrieve the checkout session id. Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  """
  @type t :: %__MODULE__{
          allow_discount_codes: boolean() | nil,
          discount_id: String.t() | nil,
          label: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          payment_processor: String.t() | nil,
          product_price_id: String.t() | nil,
          require_billing_address: boolean() | nil,
          success_url: String.t() | nil,
          trial_interval: PolarExpress.Schemas.TrialInterval.t() | nil,
          trial_interval_count: integer() | nil
        }

  defstruct [
    :allow_discount_codes,
    :discount_id,
    :label,
    :metadata,
    :payment_processor,
    :product_price_id,
    :require_billing_address,
    :success_url,
    :trial_interval,
    :trial_interval_count
  ]

  @schema_name "CheckoutLinkCreateProductPrice"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "trial_interval" => PolarExpress.Schemas.TrialInterval
    }
  end
end
