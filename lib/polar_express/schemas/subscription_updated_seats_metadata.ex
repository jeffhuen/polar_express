# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedSeatsMetadata do
  @moduledoc """
  SubscriptionUpdatedSeatsMetadata
  """

  @typedoc """
  * `proration_behavior`
  * `seats`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:proration_behavior, :seats, :subscription_id]

  @schema_name "SubscriptionUpdatedSeatsMetadata"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
