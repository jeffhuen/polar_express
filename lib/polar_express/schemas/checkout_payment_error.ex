# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutPaymentError do
  @moduledoc "CheckoutPaymentError union type."

  @type t ::
          PolarExpress.Schemas.PaymentError.t()
          | PolarExpress.Schemas.SharedPaymentTokenError.t()

  @schema_name "CheckoutPaymentError"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.PaymentError,
      PolarExpress.Schemas.SharedPaymentTokenError
    ]
  end
end
