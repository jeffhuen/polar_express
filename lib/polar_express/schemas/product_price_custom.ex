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
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          maximum_amount: integer() | nil,
          minimum_amount: integer() | nil,
          modified_at: DateTime.t() | nil,
          preset_amount: integer() | nil,
          price_currency: String.t() | nil,
          product_id: String.t() | nil,
          source: PolarExpress.Schemas.ProductPriceSource.t() | nil
        }

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
    :source
  ]

  @schema_name "ProductPriceCustom"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source" => PolarExpress.Schemas.ProductPriceSource
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
