# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodCreate do
  @moduledoc """
  CustomerPaymentMethodCreate
  """

  @typedoc """
  * `confirmation_token_id`
  * `return_url`
  * `set_default`
  """
  @type t :: %__MODULE__{
          confirmation_token_id: String.t() | nil,
          return_url: String.t() | nil,
          set_default: boolean() | nil
        }

  defstruct [:confirmation_token_id, :return_url, :set_default]

  @schema_name "CustomerPaymentMethodCreate"
  def schema_name, do: @schema_name
end
