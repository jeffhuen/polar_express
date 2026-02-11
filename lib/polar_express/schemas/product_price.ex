# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPrice do
  @moduledoc "ProductPrice union type."

  @type t ::
          PolarExpress.Schemas.ProductPriceFixed.t()
          | PolarExpress.Schemas.ProductPriceCustom.t()
          | PolarExpress.Schemas.ProductPriceFree.t()
          | PolarExpress.Schemas.ProductPriceSeatBased.t()
          | PolarExpress.Schemas.ProductPriceMeteredUnit.t()

  @schema_name "ProductPrice"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.ProductPriceFixed,
      PolarExpress.Schemas.ProductPriceCustom,
      PolarExpress.Schemas.ProductPriceFree,
      PolarExpress.Schemas.ProductPriceSeatBased,
      PolarExpress.Schemas.ProductPriceMeteredUnit
    ]
  end

  def __discriminator__ do
    {"amount_type",
     %{
       "custom" => PolarExpress.Schemas.ProductPriceCustom,
       "fixed" => PolarExpress.Schemas.ProductPriceFixed,
       "free" => PolarExpress.Schemas.ProductPriceFree,
       "metered_unit" => PolarExpress.Schemas.ProductPriceMeteredUnit,
       "seat_based" => PolarExpress.Schemas.ProductPriceSeatBased
     }}
  end
end
