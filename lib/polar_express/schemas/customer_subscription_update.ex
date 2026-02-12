# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionUpdate do
  @moduledoc "CustomerSubscriptionUpdate union type."

  @type t ::
          PolarExpress.Schemas.CustomerSubscriptionUpdateProduct.t()
          | PolarExpress.Schemas.CustomerSubscriptionUpdateSeats.t()
          | PolarExpress.Schemas.CustomerSubscriptionCancel.t()

  @schema_name "CustomerSubscriptionUpdate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerSubscriptionUpdateProduct,
      PolarExpress.Schemas.CustomerSubscriptionUpdateSeats,
      PolarExpress.Schemas.CustomerSubscriptionCancel
    ]
  end
end
