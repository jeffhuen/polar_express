# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodConfirm do
  @moduledoc """
  CustomerPaymentMethodConfirm
  """

  @typedoc """
  * `set_default`
  * `setup_intent_id`
  """
  @type t :: %__MODULE__{
          set_default: boolean() | nil,
          setup_intent_id: String.t() | nil
        }

  defstruct [:set_default, :setup_intent_id]

  @schema_name "CustomerPaymentMethodConfirm"
  def schema_name, do: @schema_name
end
