# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethod do
  @moduledoc "CustomerPaymentMethod union type."

  @type t ::
          PolarExpress.Schemas.PaymentMethodCard.t()
          | PolarExpress.Schemas.PaymentMethodGeneric.t()

  @schema_name "CustomerPaymentMethod"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.PaymentMethodCard,
      PolarExpress.Schemas.PaymentMethodGeneric
    ]
  end
end
