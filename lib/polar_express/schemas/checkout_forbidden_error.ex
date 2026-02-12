# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutForbiddenError do
  @moduledoc "CheckoutForbiddenError union type."

  @type t ::
          PolarExpress.Schemas.AlreadyActiveSubscriptionError.t()
          | PolarExpress.Schemas.NotOpenCheckout.t()
          | PolarExpress.Schemas.PaymentNotReady.t()
          | PolarExpress.Schemas.TrialAlreadyRedeemed.t()

  @schema_name "CheckoutForbiddenError"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.AlreadyActiveSubscriptionError,
      PolarExpress.Schemas.NotOpenCheckout,
      PolarExpress.Schemas.PaymentNotReady,
      PolarExpress.Schemas.TrialAlreadyRedeemed
    ]
  end
end
