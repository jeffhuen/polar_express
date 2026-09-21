# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Tiers do
  @moduledoc """
  Tiers

  The structure of the shared tiers JSONB column, used by every tiered
  price type. Purchasable quantity bounds live in the `minimum_units` and
  `maximum_units` columns, not here.
  """

  @typedoc """
  * `tiers`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:tiers, :type]

  @schema_name "Tiers"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "tiers" => PolarExpress.Schemas.Tier,
      "type" => PolarExpress.Schemas.TierType
    }
  end
end
