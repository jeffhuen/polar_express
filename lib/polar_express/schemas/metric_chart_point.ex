# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricChartPoint do
  @moduledoc """
  MetricChartPoint
  """

  @typedoc """
  * `timestamp` - Format: date-time.
  * `value`
  """
  @type t :: %__MODULE__{}

  defstruct [:timestamp, :value]

  @schema_name "MetricChartPoint"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:timestamp]
end
