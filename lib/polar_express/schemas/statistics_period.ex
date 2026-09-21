# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.StatisticsPeriod do
  @moduledoc """
  StatisticsPeriod

  Event statistics for a single time period.
  """

  @typedoc """
  * `period_end` - Period end (exclusive) Format: date-time.
  * `period_start` - Period start (inclusive) Format: date-time.
  * `stats` - Stats grouped by event name for this period
  * `timestamp` - Period timestamp Format: date-time.
  """
  @type t :: %__MODULE__{}

  defstruct [:period_end, :period_start, :stats, :timestamp]

  @schema_name "StatisticsPeriod"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "stats" => PolarExpress.Schemas.EventStatistics
    }
  end

  def __date_fields__, do: [:period_end, :period_start, :timestamp]
end
