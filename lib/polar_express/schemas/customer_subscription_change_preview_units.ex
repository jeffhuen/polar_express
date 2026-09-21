# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionChangePreviewUnits do
  @moduledoc """
  CustomerSubscriptionChangePreviewUnits
  """

  @typedoc """
  * `units` - Preview a change of the subscription to this number of units.
  """
  @type t :: %__MODULE__{}

  defstruct [:units]

  @schema_name "CustomerSubscriptionChangePreviewUnits"
  def schema_name, do: @schema_name
end
