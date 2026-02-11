# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Discount do
  @moduledoc "Discount union type."

  @type t ::
          PolarExpress.Schemas.DiscountFixedOnceForeverDuration.t()
          | PolarExpress.Schemas.DiscountFixedRepeatDuration.t()
          | PolarExpress.Schemas.DiscountPercentageOnceForeverDuration.t()
          | PolarExpress.Schemas.DiscountPercentageRepeatDuration.t()

  @schema_name "Discount"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.DiscountFixedOnceForeverDuration,
      PolarExpress.Schemas.DiscountFixedRepeatDuration,
      PolarExpress.Schemas.DiscountPercentageOnceForeverDuration,
      PolarExpress.Schemas.DiscountPercentageRepeatDuration
    ]
  end
end
