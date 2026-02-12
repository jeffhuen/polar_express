# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdate do
  @moduledoc "SubscriptionUpdate union type."

  @type t ::
          PolarExpress.Schemas.SubscriptionUpdateProduct.t()
          | PolarExpress.Schemas.SubscriptionUpdateDiscount.t()
          | PolarExpress.Schemas.SubscriptionUpdateTrial.t()
          | PolarExpress.Schemas.SubscriptionUpdateSeats.t()
          | PolarExpress.Schemas.SubscriptionUpdateBillingPeriod.t()
          | PolarExpress.Schemas.SubscriptionCancel.t()
          | PolarExpress.Schemas.SubscriptionRevoke.t()

  @schema_name "SubscriptionUpdate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.SubscriptionUpdateProduct,
      PolarExpress.Schemas.SubscriptionUpdateDiscount,
      PolarExpress.Schemas.SubscriptionUpdateTrial,
      PolarExpress.Schemas.SubscriptionUpdateSeats,
      PolarExpress.Schemas.SubscriptionUpdateBillingPeriod,
      PolarExpress.Schemas.SubscriptionCancel,
      PolarExpress.Schemas.SubscriptionRevoke
    ]
  end
end
