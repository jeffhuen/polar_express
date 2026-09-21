# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUnitsUpdatedMetadata do
  @moduledoc """
  SubscriptionUnitsUpdatedMetadata
  """

  @typedoc """
  * `new_units`
  * `old_units`
  * `proration_behavior`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:new_units, :old_units, :proration_behavior, :subscription_id]

  @schema_name "SubscriptionUnitsUpdatedMetadata"
  def schema_name, do: @schema_name
end
