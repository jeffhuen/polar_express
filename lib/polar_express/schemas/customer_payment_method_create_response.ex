# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodCreateResponse do
  @moduledoc "CustomerPaymentMethodCreateResponse union type."

  @type t ::
          PolarExpress.Schemas.CustomerPaymentMethodCreateSucceededResponse.t()
          | PolarExpress.Schemas.CustomerPaymentMethodCreateRequiresActionResponse.t()

  @schema_name "CustomerPaymentMethodCreateResponse"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerPaymentMethodCreateSucceededResponse,
      PolarExpress.Schemas.CustomerPaymentMethodCreateRequiresActionResponse
    ]
  end

  def __discriminator__ do
    {"status",
     %{
       "requires_action" =>
         PolarExpress.Schemas.CustomerPaymentMethodCreateRequiresActionResponse,
       "succeeded" => PolarExpress.Schemas.CustomerPaymentMethodCreateSucceededResponse
     }}
  end
end
