# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricDashboardUpdate do
  @moduledoc """
  MetricDashboardUpdate

  Schema for updating a metrics dashboard.
  """

  @typedoc """
  * `metrics` - List of metric slugs to display in this dashboard. Nullable.
  * `name` - Display name for the dashboard. Nullable.
  """
  @type t :: %__MODULE__{
          metrics: [String.t()] | nil,
          name: String.t() | nil
        }

  defstruct [:metrics, :name]

  @schema_name "MetricDashboardUpdate"
  def schema_name, do: @schema_name
end
