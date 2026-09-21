# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.InsightDriver do
  @moduledoc """
  InsightDriver

  One contributor to the headline change.

  Decomposition is what makes an insight *explain* rather than *announce* — e.g.
  "MRR grew 12%, ~70% of it from Pro upgrades". Populated by a grouped query; the
  MRR scaffold leaves this empty until a dedicated Tinybird breakdown pipe lands.
  """

  @typedoc """
  * `contribution_pct` - Share of the headline change attributable to this driver (0-1).
  * `dimension` - What the drivers are grouped by, e.g. `product`.
  * `label` - Human-readable name of this driver.
  * `value` - This driver's contribution in the metric's unit.
  """
  @type t :: %__MODULE__{}

  defstruct [:contribution_pct, :dimension, :label, :value]

  @schema_name "InsightDriver"
  def schema_name, do: @schema_name
end
