# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionUpdateSeats do
  @moduledoc """
  CustomerSubscriptionUpdateSeats
  """

  @typedoc """
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  * `seats` - Update the number of seats for this subscription.
  """
  @type t :: %__MODULE__{
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil,
          seats: integer() | nil
        }

  defstruct [:proration_behavior, :seats]

  @schema_name "CustomerSubscriptionUpdateSeats"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
