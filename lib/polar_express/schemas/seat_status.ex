# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SeatStatus do
  @moduledoc "SeatStatus enum. Possible values: `pending`, `claimed`, `revoked`."

  @type t :: String.t()

  @values [
    "pending",
    "claimed",
    "revoked"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SeatStatus"
  def schema_name, do: @schema_name
end
