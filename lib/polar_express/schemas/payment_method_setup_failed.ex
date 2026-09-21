# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodSetupFailed do
  @moduledoc """
  PaymentMethodSetupFailed
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentMethodSetupFailed"
  def schema_name, do: @schema_name
end
