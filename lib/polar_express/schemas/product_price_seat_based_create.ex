# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSeatBasedCreate do
  @moduledoc """
  ProductPriceSeatBasedCreate

  Schema to create a seat-based price with volume-based tiers.
  """

  @typedoc """
  * `amount_type`
  * `minimum_units` - The minimum purchasable seat quantity (inclusive). Defaults to 1 when not set. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `tax_behavior` - The tax behavior of the price. If not set, it will default to the organization's default tax behavior. Nullable.
  * `tiers` - Tiered pricing based on the purchased seat quantity.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount_type, :minimum_units, :price_currency, :tax_behavior, :tiers]

  @schema_name "ProductPriceSeatBasedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption,
      "tiers" => PolarExpress.Schemas.TiersInput
    }
  end
end
