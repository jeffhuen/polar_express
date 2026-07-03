# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentAlreadyInProgress do
  @moduledoc """
  PaymentAlreadyInProgress
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentAlreadyInProgress"
  def schema_name, do: @schema_name
end
