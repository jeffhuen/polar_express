# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSeatBasedCreate do
  @moduledoc """
  ProductPriceSeatBasedCreate

  Schema to create a seat-based price with volume-based tiers.
  """

  @typedoc """
  * `amount_type`
  * `price_currency` - The currency in which the customer will be charged.
  * `seat_tiers` - Tiered pricing based on seat quantity
  * `tax_behavior` - The tax behavior of the price. If not set, it will default to the organization's default tax behavior. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount_type, :price_currency, :seat_tiers, :tax_behavior]

  @schema_name "ProductPriceSeatBasedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "seat_tiers" => PolarExpress.Schemas.ProductPriceSeatTiersInput,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption
    }
  end
end
