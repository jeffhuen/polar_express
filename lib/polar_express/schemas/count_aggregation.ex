# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CountAggregation do
  @moduledoc """
  CountAggregation
  """

  @typedoc """
  * `func`
  """
  @type t :: %__MODULE__{
          func: String.t() | nil
        }

  defstruct [:func]

  @schema_name "CountAggregation"
  def schema_name, do: @schema_name
end
