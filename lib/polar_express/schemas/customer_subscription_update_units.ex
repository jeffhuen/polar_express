# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionUpdateUnits do
  @moduledoc """
  CustomerSubscriptionUpdateUnits
  """

  @typedoc """
  * `units` - Update the number of units for this subscription.
  """
  @type t :: %__MODULE__{}

  defstruct [:units]

  @schema_name "CustomerSubscriptionUpdateUnits"
  def schema_name, do: @schema_name
end
