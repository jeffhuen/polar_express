# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricChartBlock do
  @moduledoc """
  MetricChartBlock

  A single metric's series over the requested window.
  """

  @typedoc """
  * `label` - Human-readable metric name.
  * `metric` - Metric slug, e.g. `monthly_recurring_revenue`.
  * `points`
  * `type`
  * `unit` - Metric unit type, e.g. `currency` or `scalar`.
  """
  @type t :: %__MODULE__{}

  defstruct [:label, :metric, :points, :type, :unit]

  @schema_name "MetricChartBlock"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "points" => PolarExpress.Schemas.MetricChartPoint
    }
  end
end
