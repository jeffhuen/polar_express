# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SharedPaymentTokenError do
  @moduledoc """
  SharedPaymentTokenError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SharedPaymentTokenError"
  def schema_name, do: @schema_name
end
