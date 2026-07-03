# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentNotReady do
  @moduledoc """
  PaymentNotReady
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentNotReady"
  def schema_name, do: @schema_name
end
