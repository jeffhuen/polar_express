# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentError do
  @moduledoc """
  PaymentError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentError"
  def schema_name, do: @schema_name
end
