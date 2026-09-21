# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListVarianceEvents do
  @moduledoc """
  ListVarianceEvents

  Root events with values at or above p99 for their event name.
  """

  @typedoc """
  * `items` - Outlier events ordered by value descending.
  """
  @type t :: %__MODULE__{}

  defstruct [:items]

  @schema_name "ListVarianceEvents"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.VarianceEvent
    }
  end
end
