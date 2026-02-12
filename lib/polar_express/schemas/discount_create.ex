# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountCreate do
  @moduledoc "DiscountCreate union type."

  @type t ::
          PolarExpress.Schemas.DiscountFixedOnceForeverDurationCreate.t()
          | PolarExpress.Schemas.DiscountFixedRepeatDurationCreate.t()
          | PolarExpress.Schemas.DiscountPercentageOnceForeverDurationCreate.t()
          | PolarExpress.Schemas.DiscountPercentageRepeatDurationCreate.t()

  @schema_name "DiscountCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.DiscountFixedOnceForeverDurationCreate,
      PolarExpress.Schemas.DiscountFixedRepeatDurationCreate,
      PolarExpress.Schemas.DiscountPercentageOnceForeverDurationCreate,
      PolarExpress.Schemas.DiscountPercentageRepeatDurationCreate
    ]
  end
end
