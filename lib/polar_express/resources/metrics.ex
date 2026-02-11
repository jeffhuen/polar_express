# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Metrics do
  @moduledoc """
  Metrics

  Metrics API operations.
  """

  @typedoc """
  * `intervals` - Limits for each interval.
  * `min_date` - Minimum date to get metrics. Format: date.
  """
  @type t :: %__MODULE__{
          intervals: map() | nil,
          min_date: String.t() | nil
        }

  defstruct [:intervals, :min_date]

  @object_name "metrics"
  def object_name, do: @object_name
end
