# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricsIntervalsLimits do
  @moduledoc """
  MetricsIntervalsLimits

  Date interval limits to get metrics for each interval.
  """

  @typedoc """
  * `day` - Limits for the day interval.
  * `hour` - Limits for the hour interval.
  * `month` - Limits for the month interval.
  * `week` - Limits for the week interval.
  * `year` - Limits for the year interval.
  """
  @type t :: %__MODULE__{
          day: PolarExpress.Schemas.MetricsIntervalLimit.t() | nil,
          hour: PolarExpress.Schemas.MetricsIntervalLimit.t() | nil,
          month: PolarExpress.Schemas.MetricsIntervalLimit.t() | nil,
          week: PolarExpress.Schemas.MetricsIntervalLimit.t() | nil,
          year: PolarExpress.Schemas.MetricsIntervalLimit.t() | nil
        }

  defstruct [:day, :hour, :month, :week, :year]

  @schema_name "MetricsIntervalsLimits"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "day" => PolarExpress.Schemas.MetricsIntervalLimit,
      "hour" => PolarExpress.Schemas.MetricsIntervalLimit,
      "month" => PolarExpress.Schemas.MetricsIntervalLimit,
      "week" => PolarExpress.Schemas.MetricsIntervalLimit,
      "year" => PolarExpress.Schemas.MetricsIntervalLimit
    }
  end
end
