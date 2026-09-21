# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceMeteredTiersCreate do
  @moduledoc """
  ProductPriceMeteredTiersCreate

  Schema to create a metered price billed from tiers on consumed units.
  """

  @typedoc """
  * `amount_type`
  * `cap_amount` - Optional maximum amount in cents that can be charged, regardless of the number of units consumed. Nullable.
  * `meter_id` - The ID of the meter associated to the price. Format: uuid4.
  * `price_currency` - The currency in which the customer will be charged.
  * `tax_behavior` - The tax behavior of the price. If not set, it will default to the organization's default tax behavior. Nullable.
  * `tiers` - Tiered pricing based on consumed units.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount_type, :cap_amount, :meter_id, :price_currency, :tax_behavior, :tiers]

  @schema_name "ProductPriceMeteredTiersCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption,
      "tiers" => PolarExpress.Schemas.TiersInput
    }
  end
end
