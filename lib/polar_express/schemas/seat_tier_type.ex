# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SeatTierType do
  @moduledoc "SeatTierType enum. Possible values: `volume`, `graduated`."

  @type t :: String.t()

  @values [
    "volume",
    "graduated"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SeatTierType"
  def schema_name, do: @schema_name
end
