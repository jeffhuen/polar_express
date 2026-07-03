# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodCreateRequiresActionResponse do
  @moduledoc """
  CustomerPaymentMethodCreateRequiresActionResponse
  """

  @typedoc """
  * `client_secret`
  * `status`
  """
  @type t :: %__MODULE__{}

  defstruct [:client_secret, :status]

  @schema_name "CustomerPaymentMethodCreateRequiresActionResponse"
  def schema_name, do: @schema_name
end
