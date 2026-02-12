# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutPublicConfirmed do
  @moduledoc """
  CheckoutPublicConfirmed

  Checkout session data retrieved using the client secret after confirmation.

  It contains a customer session token to retrieve order information
  right after the checkout.
  """

  @typedoc """
  * `active_trial_interval` - Interval unit of the trial period, if any. This value is either set from the checkout, if `trial_interval` is set, or from the selected product. Nullable.
  * `active_trial_interval_count` - Number of interval units of the trial period, if any. This value is either set from the checkout, if `trial_interval_count` is set, or from the selected product. Nullable.
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it.
  * `allow_trial` - Whether to enable the trial period for the checkout session. If `false`, the trial period will be disabled, even if the selected product has a trial configured. Nullable.
  * `amount` - Amount in cents, before discounts and taxes.
  * `attached_custom_fields` - Nullable.
  * `billing_address_fields` - Determine which billing address fields should be disabled, optional or required in the checkout form.
  * `client_secret` - Client secret used to update and complete the checkout session from the client.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - Currency code of the checkout session.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer_billing_address` - Nullable.
  * `customer_billing_name` - Nullable.
  * `customer_email` - Email address of the customer. Nullable.
  * `customer_id` - Nullable.
  * `customer_ip_address` - Nullable.
  * `customer_name` - Name of the customer. Nullable.
  * `customer_session_token`
  * `customer_tax_id` - Nullable.
  * `discount` - Nullable.
  * `discount_amount` - Discount amount in cents.
  * `discount_id` - ID of the discount applied to the checkout. Nullable.
  * `embed_origin` - When checkout is embedded, represents the Origin of the page embedding the checkout. Used as a security measure to send messages only to the embedding page. Nullable.
  * `expires_at` - Expiration date and time of the checkout session. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `is_business_customer` - Whether the customer is a business or an individual. If `true`, the customer will be required to fill their full billing address and billing name.
  * `is_discount_applicable` - Whether the discount is applicable to the checkout. Typically, free and custom prices are not discountable.
  * `is_free_product_price` - Whether the product price is free, regardless of discounts.
  * `is_payment_form_required` - Whether the checkout requires a payment form, whether because of a payment or payment method setup.
  * `is_payment_required` - Whether the checkout requires payment, e.g. in case of free products or discounts that cover the total amount.
  * `is_payment_setup_required` - Whether the checkout requires setting up a payment method, regardless of the amount, e.g. subscriptions that have first free cycles.
  * `locale` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `net_amount` - Amount in cents, after discounts but before taxes.
  * `organization`
  * `organization_id` - ID of the organization owning the checkout session. Format: uuid4.
  * `payment_processor` - Payment processor used.
  * `payment_processor_metadata`
  * `price_per_seat` - Price per seat in cents for the current seat count, based on the applicable tier. Only relevant for seat-based pricing. Nullable.
  * `prices` - Mapping of product IDs to their list of prices. Nullable.
  * `product` - Product selected to checkout. Nullable.
  * `product_id` - ID of the product to checkout. Nullable.
  * `product_price` - Price of the selected product. Nullable. **Deprecated.**
  * `product_price_id` - ID of the product price to checkout. Nullable. **Deprecated.**
  * `products` - List of products available to select.
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting. If you preset the billing address, this setting will be automatically set to `true`.
  * `return_url` - When set, a back button will be shown in the checkout to return to this URL. Nullable.
  * `seats` - Number of seats for seat-based pricing. Nullable.
  * `status`
  * `success_url` - URL where the customer will be redirected after a successful payment.
  * `tax_amount` - Sales tax amount in cents. If `null`, it means there is no enough information yet to calculate it. Nullable.
  * `total_amount` - Amount in cents, after discounts and taxes.
  * `trial_end` - End date and time of the trial period, if any. Nullable.
  * `url` - URL where the customer can access the checkout session.
  """
  @type t :: %__MODULE__{
          active_trial_interval: PolarExpress.Schemas.TrialInterval.t() | nil,
          active_trial_interval_count: integer() | nil,
          allow_discount_codes: boolean() | nil,
          allow_trial: boolean() | nil,
          amount: integer() | nil,
          attached_custom_fields: [PolarExpress.Schemas.AttachedCustomField.t()] | nil,
          billing_address_fields: PolarExpress.Schemas.CheckoutBillingAddressFields.t() | nil,
          client_secret: String.t() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          custom_field_data:
            %{String.t() => String.t() | integer() | boolean() | DateTime.t() | nil} | nil,
          customer_billing_address: PolarExpress.Schemas.Address.t() | nil,
          customer_billing_name: String.t() | nil,
          customer_email: String.t() | nil,
          customer_id: String.t() | nil,
          customer_ip_address: String.t() | nil,
          customer_name: String.t() | nil,
          customer_session_token: String.t() | nil,
          customer_tax_id: String.t() | nil,
          discount:
            PolarExpress.Schemas.CheckoutDiscountFixedOnceForeverDuration.t()
            | PolarExpress.Schemas.CheckoutDiscountFixedRepeatDuration.t()
            | PolarExpress.Schemas.CheckoutDiscountPercentageOnceForeverDuration.t()
            | PolarExpress.Schemas.CheckoutDiscountPercentageRepeatDuration.t()
            | nil,
          discount_amount: integer() | nil,
          discount_id: String.t() | nil,
          embed_origin: String.t() | nil,
          expires_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_business_customer: boolean() | nil,
          is_discount_applicable: boolean() | nil,
          is_free_product_price: boolean() | nil,
          is_payment_form_required: boolean() | nil,
          is_payment_required: boolean() | nil,
          is_payment_setup_required: boolean() | nil,
          locale: String.t() | nil,
          modified_at: DateTime.t() | nil,
          net_amount: integer() | nil,
          organization: PolarExpress.Schemas.CheckoutOrganization.t() | nil,
          organization_id: String.t() | nil,
          payment_processor: PolarExpress.Schemas.PaymentProcessor.t() | nil,
          payment_processor_metadata: %{String.t() => String.t()} | nil,
          price_per_seat: integer() | nil,
          prices:
            %{
              String.t() => [
                PolarExpress.Schemas.LegacyRecurringProductPrice.t()
                | PolarExpress.Schemas.ProductPrice.t()
                | nil
              ]
            }
            | nil,
          product: PolarExpress.Schemas.CheckoutProduct.t() | nil,
          product_id: String.t() | nil,
          product_price:
            PolarExpress.Schemas.LegacyRecurringProductPrice.t()
            | PolarExpress.Schemas.ProductPrice.t()
            | nil,
          product_price_id: String.t() | nil,
          products: [PolarExpress.Schemas.CheckoutProduct.t()] | nil,
          require_billing_address: boolean() | nil,
          return_url: String.t() | nil,
          seats: integer() | nil,
          status: String.t() | nil,
          success_url: String.t() | nil,
          tax_amount: integer() | nil,
          total_amount: integer() | nil,
          trial_end: DateTime.t() | nil,
          url: String.t() | nil
        }

  defstruct [
    :active_trial_interval,
    :active_trial_interval_count,
    :allow_discount_codes,
    :allow_trial,
    :amount,
    :attached_custom_fields,
    :billing_address_fields,
    :client_secret,
    :created_at,
    :currency,
    :custom_field_data,
    :customer_billing_address,
    :customer_billing_name,
    :customer_email,
    :customer_id,
    :customer_ip_address,
    :customer_name,
    :customer_session_token,
    :customer_tax_id,
    :discount,
    :discount_amount,
    :discount_id,
    :embed_origin,
    :expires_at,
    :id,
    :is_business_customer,
    :is_discount_applicable,
    :is_free_product_price,
    :is_payment_form_required,
    :is_payment_required,
    :is_payment_setup_required,
    :locale,
    :modified_at,
    :net_amount,
    :organization,
    :organization_id,
    :payment_processor,
    :payment_processor_metadata,
    :price_per_seat,
    :prices,
    :product,
    :product_id,
    :product_price,
    :product_price_id,
    :products,
    :require_billing_address,
    :return_url,
    :seats,
    :status,
    :success_url,
    :tax_amount,
    :total_amount,
    :trial_end,
    :url
  ]

  @schema_name "CheckoutPublicConfirmed"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "active_trial_interval" => PolarExpress.Schemas.TrialInterval,
      "attached_custom_fields" => PolarExpress.Schemas.AttachedCustomField,
      "billing_address_fields" => PolarExpress.Schemas.CheckoutBillingAddressFields,
      "customer_billing_address" => PolarExpress.Schemas.Address,
      "discount" =>
        {:union, :variants,
         [
           PolarExpress.Schemas.CheckoutDiscountFixedOnceForeverDuration,
           PolarExpress.Schemas.CheckoutDiscountFixedRepeatDuration,
           PolarExpress.Schemas.CheckoutDiscountPercentageOnceForeverDuration,
           PolarExpress.Schemas.CheckoutDiscountPercentageRepeatDuration
         ]},
      "organization" => PolarExpress.Schemas.CheckoutOrganization,
      "payment_processor" => PolarExpress.Schemas.PaymentProcessor,
      "prices" =>
        {:map_values_list,
         {:union, :variants,
          [PolarExpress.Schemas.LegacyRecurringProductPrice, PolarExpress.Schemas.ProductPrice]}},
      "product" => PolarExpress.Schemas.CheckoutProduct,
      "product_price" =>
        {:union, :variants,
         [PolarExpress.Schemas.LegacyRecurringProductPrice, PolarExpress.Schemas.ProductPrice]},
      "products" => PolarExpress.Schemas.CheckoutProduct
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :modified_at, :trial_end]
end
