# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLinkUpdate do
  @moduledoc """
  CheckoutLinkUpdate

  Schema to update an existing checkout link.
  """

  @typedoc """
  * `allow_discount_codes` - Whether to allow the customer to apply discount codes. If you apply a discount through `discount_id`, it'll still be applied, but the customer won't be able to change it. Nullable.
  * `discount_id` - ID of the discount to apply to the checkout. If the discount is not applicable anymore when opening the checkout link, it'll be ignored. Nullable.
  * `label` - Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `products` - List of products that will be available to select at checkout. Nullable.
  * `require_billing_address` - Whether to require the customer to fill their full billing address, instead of just the country. Customers in the US will always be required to fill their full address, regardless of this setting. Nullable.
  * `return_url` - When set, a back button will be shown in the checkout to return to this URL. Nullable.
  * `seats` - Preconfigured number of seats for seat-based pricing. When set, checkout sessions created from this link are locked to this number of seats and the customer won't be able to change it. All products on the link must use seat-based pricing and allow this number of seats. If the products no longer accommodate this value when the link is opened, it'll be ignored. Nullable.
  * `success_url` - URL where the customer will be redirected after a successful payment.You can add the `checkout_id={CHECKOUT_ID}` query parameter to retrieve the checkout session id. Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :allow_discount_codes,
    :discount_id,
    :label,
    :metadata,
    :products,
    :require_billing_address,
    :return_url,
    :seats,
    :success_url,
    :trial_interval,
    :trial_interval_count
  ]

  @schema_name "CheckoutLinkUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "trial_interval" => PolarExpress.Schemas.TrialInterval
    }
  end
end
