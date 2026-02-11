# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSeatTiersOutput do
  @moduledoc """
  ProductPriceSeatTiers

  List of pricing tiers for seat-based pricing.

  The minimum and maximum seat limits are derived from the tiers:
  - minimum_seats = first tier's min_seats
  - maximum_seats = last tier's max_seats (None for unlimited)
  """

  @typedoc """
  * `maximum_seats` - Maximum number of seats allowed for purchase, derived from last tier. None for unlimited. Nullable.
  * `minimum_seats` - Minimum number of seats required for purchase, derived from first tier.
  * `tiers` - List of pricing tiers
  """
  @type t :: %__MODULE__{
          maximum_seats: integer() | nil,
          minimum_seats: integer() | nil,
          tiers: [PolarExpress.Schemas.ProductPriceSeatTier.t()] | nil
        }

  defstruct [:maximum_seats, :minimum_seats, :tiers]

  @schema_name "ProductPriceSeatTiers-Output"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "tiers" => PolarExpress.Schemas.ProductPriceSeatTier
    }
  end
end
