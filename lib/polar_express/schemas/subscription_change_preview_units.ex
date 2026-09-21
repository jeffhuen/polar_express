# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionChangePreviewUnits do
  @moduledoc """
  SubscriptionChangePreviewUnits
  """

  @typedoc """
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  * `units` - Preview a change of the subscription to this number of units.
  """
  @type t :: %__MODULE__{}

  defstruct [:proration_behavior, :units]

  @schema_name "SubscriptionChangePreviewUnits"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
