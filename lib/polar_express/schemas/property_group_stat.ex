# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PropertyGroupStat do
  @moduledoc """
  PropertyGroupStat

  Aggregate statistics for events grouped by a metadata property value.
  """

  @typedoc """
  * `customers` - Number of distinct customers associated with these events.
  * `occurrences` - Number of events with this property value.
  * `totals` - Sum of each aggregate field across all matching events.
  * `value` - The property value.
  """
  @type t :: %__MODULE__{}

  defstruct [:customers, :occurrences, :totals, :value]

  @schema_name "PropertyGroupStat"
  def schema_name, do: @schema_name
end
