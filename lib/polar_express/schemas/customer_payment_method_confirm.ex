# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodConfirm do
  @moduledoc """
  CustomerPaymentMethodConfirm
  """

  @typedoc """
  * `set_default`
  * `setup_intent_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:set_default, :setup_intent_id]

  @schema_name "CustomerPaymentMethodConfirm"
  def schema_name, do: @schema_name
end
