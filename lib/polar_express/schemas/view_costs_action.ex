# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ViewCostsAction do
  @moduledoc """
  ViewCostsAction

  A drill-down to the cost analytics, where per-trace anomalies live.

  Unlike `view_metric`, costs are not a single metric slug: they have their
  own analytics with a p99 anomaly breakdown. When `event_id` is set, the
  client deep-links to that specific outlier event's span; otherwise it lands
  on the costs overview. The client owns the routing either way.
  """

  @typedoc """
  * `event_id` - Root event id of the single largest outlier trace, deep-linked to its span. Null routes to the costs overview instead. Nullable.
  * `label` - Button label.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:event_id, :label, :type]

  @schema_name "ViewCostsAction"
  def schema_name, do: @schema_name
end
