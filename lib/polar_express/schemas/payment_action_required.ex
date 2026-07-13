# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentActionRequired do
  @moduledoc """
  PaymentActionRequired
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentActionRequired"
  def schema_name, do: @schema_name
end
