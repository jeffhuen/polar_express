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
  @type t :: %__MODULE__{
          new_seats: integer() | nil,
          old_seats: integer() | nil,
          proration_behavior: String.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:new_seats, :old_seats, :proration_behavior, :subscription_id]

  @schema_name "SubscriptionSeatsUpdatedMetadata"
  def schema_name, do: @schema_name
end
