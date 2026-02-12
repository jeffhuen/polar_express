# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLink do
  @moduledoc """
  CheckoutLink

  Checkout link data.
  """

  @typedoc """
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it.
  * `client_secret` - Client secret used to access the checkout link.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `discount` - Nullable.
  * `discount_id` - ID of the discount to apply to the checkout. If the discount is not applicable anymore when opening the checkout link, it'll be ignored. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `label` - Optional label to distinguish links internally Nullable.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - The organization ID. Format: uuid4.
  * `payment_processor` - Payment processor used.
  * `products`
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting.
  * `success_url` - URL where the customer will be redirected after a successful payment. Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  * `url`
  """
  @type t :: %__MODULE__{
          allow_discount_codes: boolean() | nil,
          client_secret: String.t() | nil,
          created_at: DateTime.t() | nil,
          discount:
            PolarExpress.Schemas.DiscountFixedOnceForeverDurationBase.t()
            | PolarExpress.Schemas.DiscountFixedRepeatDurationBase.t()
            | PolarExpress.Schemas.DiscountPercentageOnceForeverDurationBase.t()
            | PolarExpress.Schemas.DiscountPercentageRepeatDurationBase.t()
            | nil,
          discount_id: String.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          metadata: PolarExpress.Schemas.MetadataOutputType.t() | nil,
          modified_at: DateTime.t() | nil,
          organization_id: String.t() | nil,
          payment_processor: PolarExpress.Schemas.PaymentProcessor.t() | nil,
          products: [PolarExpress.Schemas.CheckoutLinkProduct.t()] | nil,
          require_billing_address: boolean() | nil,
          success_url: String.t() | nil,
          trial_interval: PolarExpress.Schemas.TrialInterval.t() | nil,
          trial_interval_count: integer() | nil,
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

  @schema_name "CheckoutLink"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "discount" =>
        {:union, :variants,
         [
           PolarExpress.Schemas.DiscountFixedOnceForeverDurationBase,
           PolarExpress.Schemas.DiscountFixedRepeatDurationBase,
           PolarExpress.Schemas.DiscountPercentageOnceForeverDurationBase,
           PolarExpress.Schemas.DiscountPercentageRepeatDurationBase
         ]},
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "payment_processor" => PolarExpress.Schemas.PaymentProcessor,
      "products" => PolarExpress.Schemas.CheckoutLinkProduct,
      "trial_interval" => PolarExpress.Schemas.TrialInterval
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
