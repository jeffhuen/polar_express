# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricDashboardCreate do
  @moduledoc """
  MetricDashboardCreate

  Schema for creating a metrics dashboard.
  """

  @typedoc """
  * `metrics` - List of metric slugs to display in this dashboard.
  * `name` - Display name for the dashboard.
  * `organization_id` - The ID of the organization owning this dashboard. **Required unless you use an organization token.** Nullable.
  """
  @type t :: %__MODULE__{
          metrics: [String.t()] | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil
        }

  defstruct [:metrics, :name, :organization_id]

  @schema_name "MetricDashboardCreate"
  def schema_name, do: @schema_name
end
