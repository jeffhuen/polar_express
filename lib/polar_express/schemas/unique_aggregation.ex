# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UniqueAggregation do
  @moduledoc """
  UniqueAggregation
  """

  @typedoc """
  * `func`
  * `property`
  """
  @type t :: %__MODULE__{}

  defstruct [:func, :property]

  @schema_name "UniqueAggregation"
  def schema_name, do: @schema_name
end
