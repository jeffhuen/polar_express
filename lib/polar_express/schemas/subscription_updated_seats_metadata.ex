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
  @type t :: %__MODULE__{
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil,
          seats: integer() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:proration_behavior, :seats, :subscription_id]

  @schema_name "SubscriptionUpdatedSeatsMetadata"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
