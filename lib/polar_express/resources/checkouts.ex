# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Checkouts do
  @moduledoc """
  Checkouts

  Checkouts API operations.
  """

  @typedoc """
  * `active_trial_interval` - Interval unit of the trial period, if any. This value is either set from the checkout, if `trial_interval` is set, or from the selected product.
  * `active_trial_interval_count` - Number of interval units of the trial period, if any. This value is either set from the checkout, if `trial_interval_count` is set, or from the selected product.
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it.
  * `allow_trial` - Whether to enable the trial period for the checkout session. If `false`, the trial period will be disabled, even if the selected product has a trial configured.
  * `amount` - Amount in cents, before discounts and taxes.
  * `attached_custom_fields`
  * `billing_address_fields` - Determine which billing address fields should be disabled, optional or required in the checkout form.
  * `client_secret` - Client secret used to update and complete the checkout session from the client.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - Currency code of the checkout session.
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer_billing_address`
  * `customer_billing_name`
  * `customer_email` - Email address of the customer.
  * `customer_external_id` - **Deprecated.**
  * `customer_id`
  * `customer_ip_address`
  * `customer_metadata`
  * `customer_name` - Name of the customer.
  * `customer_tax_id`
  * `discount`
  * `discount_amount` - Discount amount in cents.
  * `discount_id` - ID of the discount applied to the checkout.
  * `embed_origin` - When checkout is embedded, represents the Origin of the page embedding the checkout. Used as a security measure to send messages only to the embedding page.
  * `expires_at` - Expiration date and time of the checkout session. Format: date-time.
  * `external_customer_id` - ID of the customer in your system. If a matching customer exists on Polar, the resulting order will be linked to this customer. Otherwise, a new customer will be created with this external ID set.
  * `id` - The ID of the object. Format: uuid4.
  * `is_business_customer` - Whether the customer is a business or an individual. If `true`, the customer will be required to fill their full billing address and billing name.
  * `is_discount_applicable` - Whether the discount is applicable to the checkout. Typically, free and custom prices are not discountable.
  * `is_free_product_price` - Whether the product price is free, regardless of discounts.
  * `is_payment_form_required` - Whether the checkout requires a payment form, whether because of a payment or payment method setup.
  * `is_payment_required` - Whether the checkout requires payment, e.g. in case of free products or discounts that cover the total amount.
  * `is_payment_setup_required` - Whether the checkout requires setting up a payment method, regardless of the amount, e.g. subscriptions that have first free cycles.
  * `locale`
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `net_amount` - Amount in cents, after discounts but before taxes.
  * `organization_id` - ID of the organization owning the checkout session. Format: uuid4.
  * `payment_processor` - Payment processor used.
  * `payment_processor_metadata`
  * `price_per_seat` - Price per seat in cents for the current seat count, based on the applicable tier. Only relevant for seat-based pricing.
  * `prices` - Mapping of product IDs to their list of prices.
  * `product` - Product selected to checkout.
  * `product_id` - ID of the product to checkout.
  * `product_price` - Price of the selected product. **Deprecated.**
  * `product_price_id` - ID of the product price to checkout. **Deprecated.**
  * `products` - List of products available to select.
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting. If you preset the billing address, this setting will be automatically set to `true`.
  * `return_url` - When set, a back button will be shown in the checkout to return to this URL.
  * `seats` - Number of seats for seat-based pricing.
  * `status` - Status of the checkout session.

  - Open: the checkout session was opened.
  - Expired: the checkout session was expired and is no more accessible.
  - Confirmed: the user on the checkout session clicked Pay. This is not indicative of the payment's success status.
  - Failed: the checkout definitely failed for technical reasons and cannot be retried. In most cases, this state is never reached.
  - Succeeded: the payment on the checkout was performed successfully.
  * `subscription_id`
  * `success_url` - URL where the customer will be redirected after a successful payment.
  * `tax_amount` - Sales tax amount in cents. If `null`, it means there is no enough information yet to calculate it.
  * `total_amount` - Amount in cents, after discounts and taxes.
  * `trial_end` - End date and time of the trial period, if any.
  * `trial_interval` - The interval unit for the trial period.
  * `trial_interval_count` - The number of interval units for the trial period.
  * `url` - URL where the customer can access the checkout session.
  """
  @type t :: %__MODULE__{
          active_trial_interval: term() | nil,
          active_trial_interval_count: term() | nil,
          allow_discount_codes: boolean() | nil,
          allow_trial: term() | nil,
          amount: integer() | nil,
          attached_custom_fields: term() | nil,
          billing_address_fields: map() | nil,
          client_secret: String.t() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          custom_field_data: term() | nil,
          customer_billing_address: term() | nil,
          customer_billing_name: term() | nil,
          customer_email: term() | nil,
          customer_external_id: term() | nil,
          customer_id: term() | nil,
          customer_ip_address: term() | nil,
          customer_metadata: term() | nil,
          customer_name: term() | nil,
          customer_tax_id: term() | nil,
          discount: term() | nil,
          discount_amount: integer() | nil,
          discount_id: term() | nil,
          embed_origin: term() | nil,
          expires_at: String.t() | nil,
          external_customer_id: term() | nil,
          id: String.t() | nil,
          is_business_customer: boolean() | nil,
          is_discount_applicable: boolean() | nil,
          is_free_product_price: boolean() | nil,
          is_payment_form_required: boolean() | nil,
          is_payment_required: boolean() | nil,
          is_payment_setup_required: boolean() | nil,
          locale: term() | nil,
          metadata: map() | nil,
          modified_at: term() | nil,
          net_amount: integer() | nil,
          organization_id: String.t() | nil,
          payment_processor: map() | nil,
          payment_processor_metadata: term() | nil,
          price_per_seat: term() | nil,
          prices: term() | nil,
          product: term() | nil,
          product_id: term() | nil,
          product_price: term() | nil,
          product_price_id: term() | nil,
          products: [map()] | nil,
          require_billing_address: boolean() | nil,
          return_url: term() | nil,
          seats: term() | nil,
          status: map() | nil,
          subscription_id: term() | nil,
          success_url: String.t() | nil,
          tax_amount: term() | nil,
          total_amount: integer() | nil,
          trial_end: term() | nil,
          trial_interval: term() | nil,
          trial_interval_count: term() | nil,
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
    :customer_external_id,
    :customer_id,
    :customer_ip_address,
    :customer_metadata,
    :customer_name,
    :customer_tax_id,
    :discount,
    :discount_amount,
    :discount_id,
    :embed_origin,
    :expires_at,
    :external_customer_id,
    :id,
    :is_business_customer,
    :is_discount_applicable,
    :is_free_product_price,
    :is_payment_form_required,
    :is_payment_required,
    :is_payment_setup_required,
    :locale,
    :metadata,
    :modified_at,
    :net_amount,
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
    :subscription_id,
    :success_url,
    :tax_amount,
    :total_amount,
    :trial_end,
    :trial_interval,
    :trial_interval_count,
    :url
  ]

  @object_name "checkouts"
  def object_name, do: @object_name
end
