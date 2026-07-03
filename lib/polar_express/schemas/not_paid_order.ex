# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotPaidOrder do
  @moduledoc """
  NotPaidOrder
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "NotPaidOrder"
  def schema_name, do: @schema_name
end
