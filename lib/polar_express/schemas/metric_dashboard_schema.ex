# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MetricDashboardSchema do
  @moduledoc """
  MetricDashboardSchema

  A user-defined metrics dashboard.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `metrics` - List of metric slugs displayed in this dashboard.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Display name for the dashboard.
  * `organization_id` - The ID of the organization owning this dashboard. Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :metrics, :modified_at, :name, :organization_id]

  @schema_name "MetricDashboardSchema"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
