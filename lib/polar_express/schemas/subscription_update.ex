# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdate do
  @moduledoc "SubscriptionUpdate union type."

  @type t ::
          PolarExpress.Schemas.SubscriptionUpdateBase.t()
          | PolarExpress.Schemas.SubscriptionUpdateSeats.t()
          | PolarExpress.Schemas.SubscriptionUpdateBillingPeriod.t()
          | PolarExpress.Schemas.SubscriptionCancel.t()
          | PolarExpress.Schemas.SubscriptionRevoke.t()
          | PolarExpress.Schemas.SubscriptionPause.t()
          | PolarExpress.Schemas.SubscriptionResume.t()
          | PolarExpress.Schemas.SubscriptionUpdateClear.t()

  @schema_name "SubscriptionUpdate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.SubscriptionUpdateBase,
      PolarExpress.Schemas.SubscriptionUpdateSeats,
      PolarExpress.Schemas.SubscriptionUpdateBillingPeriod,
      PolarExpress.Schemas.SubscriptionCancel,
      PolarExpress.Schemas.SubscriptionRevoke,
      PolarExpress.Schemas.SubscriptionPause,
      PolarExpress.Schemas.SubscriptionResume,
      PolarExpress.Schemas.SubscriptionUpdateClear
    ]
  end
end
