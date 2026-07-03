# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceCustom do
  @moduledoc """
  ProductPriceCustom

  A pay-what-you-want price for a product.
  """

  @typedoc """
  * `amount_type`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the price. Format: uuid4.
  * `is_archived` - Whether the price is archived and no longer available.
  * `maximum_amount` - The maximum amount the customer can pay. Nullable.
  * `minimum_amount` - The minimum amount the customer can pay. If 0, the price is 'free or pay what you want'. Defaults to 50 cents.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `preset_amount` - The initial amount shown to the customer. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `product_id` - The ID of the product owning the price. Format: uuid4.
  * `source` - The source of the price . `catalog` is a predefined price, while `ad_hoc` is a price created dynamically on a Checkout session.
  * `tax_behavior` - The tax behavior of the price. If null, it defaults to the organization's default tax behavior. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount_type,
    :created_at,
    :id,
    :is_archived,
    :maximum_amount,
    :minimum_amount,
    :modified_at,
    :preset_amount,
    :price_currency,
    :product_id,
    :source,
    :tax_behavior
  ]

  @schema_name "ProductPriceCustom"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source" => PolarExpress.Schemas.ProductPriceSource,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
