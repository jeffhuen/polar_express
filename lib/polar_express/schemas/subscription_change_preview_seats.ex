# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionChangePreviewSeats do
  @moduledoc """
  SubscriptionChangePreviewSeats
  """

  @typedoc """
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  * `seats` - Preview a change of the subscription to this number of seats.
  """
  @type t :: %__MODULE__{}

  defstruct [:proration_behavior, :seats]

  @schema_name "SubscriptionChangePreviewSeats"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
