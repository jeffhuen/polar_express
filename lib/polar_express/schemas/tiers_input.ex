# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TiersInput do
  @moduledoc """
  TiersInput

  Tiers submitted through the API. Kept apart from `Tiers` so tightening
  a rule here never stops a stored row from loading.
  """

  @typedoc """
  * `tiers`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:tiers, :type]

  @schema_name "TiersInput"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "tiers" => PolarExpress.Schemas.TierInput,
      "type" => PolarExpress.Schemas.TierType
    }
  end
end
