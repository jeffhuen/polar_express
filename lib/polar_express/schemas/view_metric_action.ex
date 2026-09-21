# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ViewMetricAction do
  @moduledoc """
  ViewMetricAction

  A drill-down that points at the metric behind the insight.
  """

  @typedoc """
  * `label` - Button label.
  * `metric` - Slug of the metric this insight is about (e.g. `monthly_recurring_revenue`). The client owns the routing and resolves it to the matching analytics page.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:label, :metric, :type]

  @schema_name "ViewMetricAction"
  def schema_name, do: @schema_name
end
