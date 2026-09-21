# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateUnits do
  @moduledoc """
  SubscriptionUpdateUnits
  """

  @typedoc """
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  * `units` - Update the number of units for this subscription.
  """
  @type t :: %__MODULE__{}

  defstruct [:proration_behavior, :units]

  @schema_name "SubscriptionUpdateUnits"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
