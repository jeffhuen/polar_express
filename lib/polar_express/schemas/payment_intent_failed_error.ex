# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentIntentFailedError do
  @moduledoc """
  PaymentIntentFailedError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentIntentFailedError"
  def schema_name, do: @schema_name
end
