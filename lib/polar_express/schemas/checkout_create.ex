# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutCreate do
  @moduledoc "CheckoutCreate union type."

  @type t ::
          PolarExpress.Schemas.CheckoutProductsCreate.t()
          | PolarExpress.Schemas.CheckoutProductsExternalCreate.t()

  @schema_name "CheckoutCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CheckoutProductsCreate,
      PolarExpress.Schemas.CheckoutProductsExternalCreate
    ]
  end
end
