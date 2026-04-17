# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSeatTiersInput do
  @moduledoc """
  ProductPriceSeatTiers

  List of pricing tiers for seat-based pricing.

  The minimum and maximum seat limits are derived from the tiers:
  - minimum_seats = first tier's min_seats
  - maximum_seats = last tier's max_seats (None for unlimited)
  """

  @typedoc """
  * `seat_tier_type` - How tiers are applied. 'volume' prices all seats at the matching tier's rate. 'graduated' prices each tier's range independently.
  * `tiers` - List of pricing tiers
  """
  @type t :: %__MODULE__{
          seat_tier_type: PolarExpress.Schemas.SeatTierType.t() | nil,
          tiers: [PolarExpress.Schemas.ProductPriceSeatTier.t()] | nil
        }

  defstruct [:seat_tier_type, :tiers]

  @schema_name "ProductPriceSeatTiers-Input"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "seat_tier_type" => PolarExpress.Schemas.SeatTierType,
      "tiers" => PolarExpress.Schemas.ProductPriceSeatTier
    }
  end
end
