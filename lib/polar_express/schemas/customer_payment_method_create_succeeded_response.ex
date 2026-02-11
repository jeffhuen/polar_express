# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodCreateSucceededResponse do
  @moduledoc """
  CustomerPaymentMethodCreateSucceededResponse
  """

  @typedoc """
  * `payment_method`
  * `status`
  """
  @type t :: %__MODULE__{
          payment_method: PolarExpress.Schemas.CustomerPaymentMethod.t() | nil,
          status: String.t() | nil
        }

  defstruct [:payment_method, :status]

  @schema_name "CustomerPaymentMethodCreateSucceededResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "payment_method" => PolarExpress.Schemas.CustomerPaymentMethod
    }
  end
end
