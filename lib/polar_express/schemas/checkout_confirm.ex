# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutConfirm do
  @moduledoc "CheckoutConfirm union type."

  @type t ::
          PolarExpress.Schemas.CheckoutConfirmStripe.t()
          | PolarExpress.Schemas.CheckoutConfirmSharedPaymentToken.t()

  @schema_name "CheckoutConfirm"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CheckoutConfirmStripe,
      PolarExpress.Schemas.CheckoutConfirmSharedPaymentToken
    ]
  end
end
