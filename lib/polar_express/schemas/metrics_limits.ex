# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricsLimits do
  @moduledoc """
  MetricsLimits

  Date limits to get metrics.
  """

  @typedoc """
  * `intervals` - Limits for each interval.
  * `min_date` - Minimum date to get metrics. Format: date.
  """
  @type t :: %__MODULE__{
          intervals: PolarExpress.Schemas.MetricsIntervalsLimits.t() | nil,
          min_date: String.t() | nil
        }

  defstruct [:intervals, :min_date]

  @schema_name "MetricsLimits"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "intervals" => PolarExpress.Schemas.MetricsIntervalsLimits
    }
  end
end
