# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethod do
  @moduledoc "PaymentMethod union type."

  @type t ::
          PolarExpress.Schemas.CustomerPaymentMethodCard.t()
          | PolarExpress.Schemas.CustomerPaymentMethodGeneric.t()

  @schema_name "PaymentMethod"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerPaymentMethodCard,
      PolarExpress.Schemas.CustomerPaymentMethodGeneric
    ]
  end
end
