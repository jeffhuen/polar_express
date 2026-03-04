# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceFree do
  @moduledoc """
  ProductPriceFree

  A free price for a product.
  """

  @typedoc """
  * `amount_type`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the price. Format: uuid4.
  * `is_archived` - Whether the price is archived and no longer available.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `product_id` - The ID of the product owning the price. Format: uuid4.
  * `source` - The source of the price . `catalog` is a predefined price, while `ad_hoc` is a price created dynamically on a Checkout session.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          modified_at: DateTime.t() | nil,
          price_currency: String.t() | nil,
          product_id: String.t() | nil,
          source: PolarExpress.Schemas.ProductPriceSource.t() | nil
        }

  defstruct [
    :amount_type,
    :created_at,
    :id,
    :is_archived,
    :modified_at,
    :price_currency,
    :product_id,
    :source
  ]

  @schema_name "ProductPriceFree"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source" => PolarExpress.Schemas.ProductPriceSource
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
