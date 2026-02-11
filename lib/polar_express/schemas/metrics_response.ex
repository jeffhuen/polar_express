# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricsResponse do
  @moduledoc """
  MetricsResponse

  Metrics response schema.
  """

  @typedoc """
  * `metrics` - Information about the returned metrics.
  * `periods` - List of data for each timestamp.
  * `totals` - Totals for the whole selected period.
  """
  @type t :: %__MODULE__{
          metrics: PolarExpress.Schemas.Metrics.t() | nil,
          periods: [PolarExpress.Schemas.MetricPeriod.t()] | nil,
          totals: PolarExpress.Schemas.MetricsTotals.t() | nil
        }

  defstruct [:metrics, :periods, :totals]

  @schema_name "MetricsResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "metrics" => PolarExpress.Schemas.Metrics,
      "periods" => PolarExpress.Schemas.MetricPeriod,
      "totals" => PolarExpress.Schemas.MetricsTotals
    }
  end
end
