# File generated from our OpenAPI spec
defmodule PolarExpress.Params.MetricsListMetricDashboardsParams do
  @moduledoc "Parameters for metrics list metric dashboards."

  @typedoc """
  * `organization_id` - Filter by organization ID.
  """
  @type t :: %__MODULE__{
          organization_id: map() | nil
        }

  defstruct [:organization_id]
end
