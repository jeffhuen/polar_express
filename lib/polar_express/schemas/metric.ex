# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Metric do
  @moduledoc """
  Metric

  Information about a metric.
  """

  @typedoc """
  * `display_name` - Human-readable name for the metric.
  * `slug` - Unique identifier for the metric.
  * `type` - Type of the metric, useful to know the unit or format of the value.
  """
  @type t :: %__MODULE__{
          display_name: String.t() | nil,
          slug: String.t() | nil,
          type: PolarExpress.Schemas.MetricType.t() | nil
        }

  defstruct [:display_name, :slug, :type]

  @schema_name "Metric"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "type" => PolarExpress.Schemas.MetricType
    }
  end
end
