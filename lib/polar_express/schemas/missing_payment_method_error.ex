# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MissingPaymentMethodError do
  @moduledoc """
  MissingPaymentMethodError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "MissingPaymentMethodError"
  def schema_name, do: @schema_name
end
