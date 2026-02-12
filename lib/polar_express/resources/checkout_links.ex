# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CheckoutLinks do
  @moduledoc """
  Checkout-links

  CheckoutLinks API operations.
  """

  @typedoc """
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it.
  * `client_secret` - Client secret used to access the checkout link.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `discount`
  * `discount_id` - ID of the discount to apply to the checkout. If the discount is not applicable anymore when opening the checkout link, it'll be ignored.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - Optional label to distinguish links internally
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `organization_id` - The organization ID. Format: uuid4.
  * `payment_processor` - Payment processor used.
  * `products`
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting.
  * `success_url` - URL where the customer will be redirected after a successful payment.
  * `trial_interval` - The interval unit for the trial period.
  * `trial_interval_count` - The number of interval units for the trial period.
  * `url`
  """
  @type t :: %__MODULE__{
          allow_discount_codes: boolean() | nil,
          client_secret: String.t() | nil,
          created_at: String.t() | nil,
          discount: term() | nil,
          discount_id: term() | nil,
          id: String.t() | nil,
          label: term() | nil,
          metadata: map() | nil,
          modified_at: term() | nil,
          organization_id: String.t() | nil,
          payment_processor: map() | nil,
          products: [map()] | nil,
          require_billing_address: boolean() | nil,
          success_url: term() | nil,
          trial_interval: term() | nil,
          trial_interval_count: term() | nil,
          url: String.t() | nil
        }

  defstruct [
    :allow_discount_codes,
    :client_secret,
    :created_at,
    :discount,
    :discount_id,
    :id,
    :label,
    :metadata,
    :modified_at,
    :organization_id,
    :payment_processor,
    :products,
    :require_billing_address,
    :success_url,
    :trial_interval,
    :trial_interval_count,
    :url
  ]

  @object_name "checkout-links"
  def object_name, do: @object_name
end
