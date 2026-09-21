# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListPropertyGroupStats do
  @moduledoc """
  ListPropertyGroupStats

  Event statistics grouped by a metadata property.
  """

  @typedoc """
  * `items` - Stats grouped by property value, ordered by first aggregate field descending.
  """
  @type t :: %__MODULE__{}

  defstruct [:items]

  @schema_name "ListPropertyGroupStats"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.PropertyGroupStat
    }
  end
end
