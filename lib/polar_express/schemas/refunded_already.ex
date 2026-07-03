# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefundedAlready do
  @moduledoc """
  RefundedAlready
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "RefundedAlready"
  def schema_name, do: @schema_name
end
