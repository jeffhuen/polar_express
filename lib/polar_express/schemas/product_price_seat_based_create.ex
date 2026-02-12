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
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil,
          seat_tiers: PolarExpress.Schemas.ProductPriceSeatTiersInput.t() | nil
        }

  defstruct [:amount_type, :price_currency, :seat_tiers]

  @schema_name "ProductPriceSeatBasedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "seat_tiers" => PolarExpress.Schemas.ProductPriceSeatTiersInput
    }
  end
end
