# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricsIntervalLimit do
  @moduledoc """
  MetricsIntervalLimit

  Date interval limit to get metrics for a given interval.
  """

  @typedoc """
  * `max_days` - Maximum number of days for this interval.
  * `min_days` - Minimum number of days for this interval.
  """
  @type t :: %__MODULE__{
          max_days: integer() | nil,
          min_days: integer() | nil
        }

  defstruct [:max_days, :min_days]

  @schema_name "MetricsIntervalLimit"
  def schema_name, do: @schema_name
end
