# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodRequired do
  @moduledoc """
  PaymentMethodRequired
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentMethodRequired"
  def schema_name, do: @schema_name
end
