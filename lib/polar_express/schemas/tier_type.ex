# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TierType do
  @moduledoc "TierType enum. Possible values: `volume`, `graduated`."

  @type t :: String.t()

  @values [
    "volume",
    "graduated"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TierType"
  def schema_name, do: @schema_name
end
