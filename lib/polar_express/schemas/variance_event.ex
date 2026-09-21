# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.VarianceEvent do
  @moduledoc """
  VarianceEvent

  A root event whose aggregate value is at or above the p99 for its event name.
  """

  @typedoc """
  * `averages` - Average per-trace value for this event name.
  * `customer_id` - Polar customer ID. Nullable.
  * `event_id` - The root event ID. Format: uuid4.
  * `external_customer_id` - External customer ID. Nullable.
  * `name` - The event name.
  * `p99` - p99 per-trace value for this event name.
  * `timestamp` - Timestamp of the root event. Format: date-time.
  * `values` - Aggregate totals for this trace.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :averages,
    :customer_id,
    :event_id,
    :external_customer_id,
    :name,
    :p99,
    :timestamp,
    :values
  ]

  @schema_name "VarianceEvent"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:timestamp]
end
