# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSeatBased do
  @moduledoc """
  ProductPriceSeatBased

  A seat-based price for a product.
  """

  @typedoc """
  * `amount_type`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the price. Format: uuid4.
  * `is_archived` - Whether the price is archived and no longer available.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `product_id` - The ID of the product owning the price. Format: uuid4.
  * `seat_tiers` - Tiered pricing based on seat quantity
  * `source` - The source of the price . `catalog` is a predefined price, while `ad_hoc` is a price created dynamically on a Checkout session.
  * `tax_behavior` - The tax behavior of the price. If null, it defaults to the organization's default tax behavior. Nullable.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          modified_at: DateTime.t() | nil,
          price_currency: String.t() | nil,
          product_id: String.t() | nil,
          seat_tiers: PolarExpress.Schemas.ProductPriceSeatTiersOutput.t() | nil,
          source: PolarExpress.Schemas.ProductPriceSource.t() | nil,
          tax_behavior: PolarExpress.Schemas.TaxBehaviorOption.t() | nil
        }

  defstruct [
    :amount_type,
    :created_at,
    :id,
    :is_archived,
    :modified_at,
    :price_currency,
    :product_id,
    :seat_tiers,
    :source,
    :tax_behavior
  ]

  @schema_name "ProductPriceSeatBased"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "seat_tiers" => PolarExpress.Schemas.ProductPriceSeatTiersOutput,
      "source" => PolarExpress.Schemas.ProductPriceSource,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
