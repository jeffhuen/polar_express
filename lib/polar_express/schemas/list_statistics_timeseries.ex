# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListStatisticsTimeseries do
  @moduledoc """
  ListStatisticsTimeseries

  Event statistics timeseries.
  """

  @typedoc """
  * `periods` - Stats for each time period.
  * `totals` - Overall stats across all periods.
  """
  @type t :: %__MODULE__{}

  defstruct [:periods, :totals]

  @schema_name "ListStatisticsTimeseries"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "periods" => PolarExpress.Schemas.StatisticsPeriod,
      "totals" => PolarExpress.Schemas.EventStatistics
    }
  end
end
