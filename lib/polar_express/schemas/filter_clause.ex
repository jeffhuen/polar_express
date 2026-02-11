# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FilterClause do
  @moduledoc """
  FilterClause
  """

  @typedoc """
  * `operator`
  * `property`
  * `value`
  """
  @type t :: %__MODULE__{
          operator: PolarExpress.Schemas.FilterOperator.t() | nil,
          property: String.t() | nil,
          value: String.t() | integer() | boolean() | nil
        }

  defstruct [:operator, :property, :value]

  @schema_name "FilterClause"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "operator" => PolarExpress.Schemas.FilterOperator
    }
  end
end
