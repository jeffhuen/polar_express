# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionChangePreviewSeats do
  @moduledoc """
  CustomerSubscriptionChangePreviewSeats
  """

  @typedoc """
  * `seats` - Preview a change of the subscription to this number of seats.
  """
  @type t :: %__MODULE__{}

  defstruct [:seats]

  @schema_name "CustomerSubscriptionChangePreviewSeats"
  def schema_name, do: @schema_name
end
