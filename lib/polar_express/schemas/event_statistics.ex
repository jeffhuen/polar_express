# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventStatistics do
  @moduledoc """
  EventStatistics

  Aggregate statistics for events grouped by root event name.
  """

  @typedoc """
  * `averages` - Average of per-hierarchy totals (i.e., average cost per trace).
  * `customers` - Number of distinct customers associated with events.
  * `event_type_id` - The ID of the event type Format: uuid4.
  * `label` - The label of the event type.
  * `name` - The name of the root event.
  * `occurrences` - Number of root events with this name (i.e., number of traces).
  * `p10` - 10th percentile of per-hierarchy totals.
  * `p90` - 90th percentile of per-hierarchy totals.
  * `p99` - 99th percentile of per-hierarchy totals.
  * `totals` - Sum of each field across all events in all hierarchies.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :averages,
    :customers,
    :event_type_id,
    :label,
    :name,
    :occurrences,
    :p10,
    :p90,
    :p99,
    :totals
  ]

  @schema_name "EventStatistics"
  def schema_name, do: @schema_name
end
