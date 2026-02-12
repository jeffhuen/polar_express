# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLinkCreate do
  @moduledoc "CheckoutLinkCreate union type."

  @type t ::
          PolarExpress.Schemas.CheckoutLinkCreateProductPrice.t()
          | PolarExpress.Schemas.CheckoutLinkCreateProduct.t()
          | PolarExpress.Schemas.CheckoutLinkCreateProducts.t()

  @schema_name "CheckoutLinkCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CheckoutLinkCreateProductPrice,
      PolarExpress.Schemas.CheckoutLinkCreateProduct,
      PolarExpress.Schemas.CheckoutLinkCreateProducts
    ]
  end
end
