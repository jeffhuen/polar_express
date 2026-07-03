# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionSeatsUpdatedMetadata do
  @moduledoc """
  SubscriptionSeatsUpdatedMetadata
  """

  @typedoc """
  * `new_seats`
  * `old_seats`
  * `proration_behavior`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:new_seats, :old_seats, :proration_behavior, :subscription_id]

  @schema_name "SubscriptionSeatsUpdatedMetadata"
  def schema_name, do: @schema_name
end
