# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceUnitBased do
  @moduledoc """
  ProductPriceUnitBased

  A unit-based price for a product: the buyer picks a quantity of units,
  pays for it up-front. On subscriptions, quantity changes are prorated.
  """

  @typedoc """
  * `amount_type`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the price. Format: uuid4.
  * `is_archived` - Whether the price is archived and no longer available.
  * `maximum_units` - The maximum purchasable quantity, from the last tier's bound. `null` for unlimited. Nullable.
  * `minimum_units` - The minimum purchasable quantity (inclusive). Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `product_id` - The ID of the product owning the price. Format: uuid4.
  * `source` - The source of the price . `catalog` is a predefined price, while `ad_hoc` is a price created dynamically on a Checkout session.
  * `tax_behavior` - The tax behavior of the price. If null, it defaults to the organization's default tax behavior. Nullable.
  * `tiers` - Tiered pricing based on the purchased unit quantity.
  * `unit_label` - Per-locale unit nouns shown at checkout and on invoices. `null` defaults to "unit"/"units". Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount_type,
    :created_at,
    :id,
    :is_archived,
    :maximum_units,
    :minimum_units,
    :modified_at,
    :price_currency,
    :product_id,
    :source,
    :tax_behavior,
    :tiers,
    :unit_label
  ]

  @schema_name "ProductPriceUnitBased"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source" => PolarExpress.Schemas.ProductPriceSource,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption,
      "tiers" => PolarExpress.Schemas.Tiers
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
