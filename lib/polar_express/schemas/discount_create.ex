# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountCreate do
  @moduledoc "DiscountCreate union type."

  @type t ::
          PolarExpress.Schemas.DiscountFixedCreate.t()
          | PolarExpress.Schemas.DiscountPercentageCreate.t()

  @schema_name "DiscountCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.DiscountFixedCreate,
      PolarExpress.Schemas.DiscountPercentageCreate
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "fixed" => PolarExpress.Schemas.DiscountFixedCreate,
       "percentage" => PolarExpress.Schemas.DiscountPercentageCreate
     }}
  end
end
