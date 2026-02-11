# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodCreateRequiresActionResponse do
  @moduledoc """
  CustomerPaymentMethodCreateRequiresActionResponse
  """

  @typedoc """
  * `client_secret`
  * `status`
  """
  @type t :: %__MODULE__{
          client_secret: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:client_secret, :status]

  @schema_name "CustomerPaymentMethodCreateRequiresActionResponse"
  def schema_name, do: @schema_name
end
