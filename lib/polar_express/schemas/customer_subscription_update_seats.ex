# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionUpdateSeats do
  @moduledoc """
  CustomerSubscriptionUpdateSeats
  """

  @typedoc """
  * `seats` - Update the number of seats for this subscription.
  """
  @type t :: %__MODULE__{}

  defstruct [:seats]

  @schema_name "CustomerSubscriptionUpdateSeats"
  def schema_name, do: @schema_name
end
