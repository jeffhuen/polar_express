# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductCreate do
  @moduledoc "ProductCreate union type."

  @type t ::
          PolarExpress.Schemas.ProductCreateRecurring.t()
          | PolarExpress.Schemas.ProductCreateOneTime.t()

  @schema_name "ProductCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.ProductCreateRecurring,
      PolarExpress.Schemas.ProductCreateOneTime
    ]
  end
end
