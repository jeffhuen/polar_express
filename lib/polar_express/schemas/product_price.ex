# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPrice do
  @moduledoc "ProductPrice union type."

  @type t ::
          PolarExpress.Schemas.ProductPriceFixed.t()
          | PolarExpress.Schemas.ProductPriceCustom.t()
          | PolarExpress.Schemas.ProductPriceSeatBased.t()
          | PolarExpress.Schemas.ProductPriceUnitBased.t()
          | PolarExpress.Schemas.ProductPriceMeteredUnit.t()
          | PolarExpress.Schemas.ProductPriceMeteredTiers.t()

  @schema_name "ProductPrice"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.ProductPriceFixed,
      PolarExpress.Schemas.ProductPriceCustom,
      PolarExpress.Schemas.ProductPriceSeatBased,
      PolarExpress.Schemas.ProductPriceUnitBased,
      PolarExpress.Schemas.ProductPriceMeteredUnit,
      PolarExpress.Schemas.ProductPriceMeteredTiers
    ]
  end

  def __discriminator__ do
    {"amount_type",
     %{
       "custom" => PolarExpress.Schemas.ProductPriceCustom,
       "fixed" => PolarExpress.Schemas.ProductPriceFixed,
       "metered_tiers" => PolarExpress.Schemas.ProductPriceMeteredTiers,
       "metered_unit" => PolarExpress.Schemas.ProductPriceMeteredUnit,
       "seat_based" => PolarExpress.Schemas.ProductPriceSeatBased,
       "unit_based" => PolarExpress.Schemas.ProductPriceUnitBased
     }}
  end
end
