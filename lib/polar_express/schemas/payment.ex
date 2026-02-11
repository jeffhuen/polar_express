# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Payment do
  @moduledoc "Payment union type."

  @type t ::
          PolarExpress.Schemas.CardPayment.t()
          | PolarExpress.Schemas.GenericPayment.t()

  @schema_name "Payment"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CardPayment,
      PolarExpress.Schemas.GenericPayment
    ]
  end
end
