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
  * `tiers` - List of pricing tiers
  """
  @type t :: %__MODULE__{
          tiers: [PolarExpress.Schemas.ProductPriceSeatTier.t()] | nil
        }

  defstruct [:tiers]

  @schema_name "ProductPriceSeatTiers-Input"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "tiers" => PolarExpress.Schemas.ProductPriceSeatTier
    }
  end
end
