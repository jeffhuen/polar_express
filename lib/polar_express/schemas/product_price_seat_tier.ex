# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSeatTier do
  @moduledoc """
  ProductPriceSeatTier

  A pricing tier for seat-based pricing.
  """

  @typedoc """
  * `max_seats` - Maximum number of seats (inclusive). None for unlimited. Nullable.
  * `min_seats` - Minimum number of seats (inclusive)
  * `price_per_seat` - Price per seat in cents for this tier
  """
  @type t :: %__MODULE__{
          max_seats: integer() | nil,
          min_seats: integer() | nil,
          price_per_seat: integer() | nil
        }

  defstruct [:max_seats, :min_seats, :price_per_seat]

  @schema_name "ProductPriceSeatTier"
  def schema_name, do: @schema_name
end
