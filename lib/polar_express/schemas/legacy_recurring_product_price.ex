# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LegacyRecurringProductPrice do
  @moduledoc "LegacyRecurringProductPrice union type."

  @type t ::
          PolarExpress.Schemas.LegacyRecurringProductPriceFixed.t()
          | PolarExpress.Schemas.LegacyRecurringProductPriceCustom.t()
          | PolarExpress.Schemas.LegacyRecurringProductPriceFree.t()

  @schema_name "LegacyRecurringProductPrice"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.LegacyRecurringProductPriceFixed,
      PolarExpress.Schemas.LegacyRecurringProductPriceCustom,
      PolarExpress.Schemas.LegacyRecurringProductPriceFree
    ]
  end

  def __discriminator__ do
    {"amount_type",
     %{
       "custom" => PolarExpress.Schemas.LegacyRecurringProductPriceCustom,
       "fixed" => PolarExpress.Schemas.LegacyRecurringProductPriceFixed,
       "free" => PolarExpress.Schemas.LegacyRecurringProductPriceFree
     }}
  end
end
