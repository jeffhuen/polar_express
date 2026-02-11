# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PropertyAggregation do
  @moduledoc """
  PropertyAggregation
  """

  @typedoc """
  * `func` - Possible values: `sum`, `max`, `min`, `avg`.
  * `property`
  """
  @type t :: %__MODULE__{
          func: String.t() | nil,
          property: String.t() | nil
        }

  defstruct [:func, :property]

  @schema_name "PropertyAggregation"
  def schema_name, do: @schema_name
end
