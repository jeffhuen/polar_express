# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutStatus do
  @moduledoc "PayoutStatus enum. Possible values: `pending`, `in_transit`, `succeeded`, `failed`, `canceled`, `held`."

  @type t :: String.t()

  @values [
    "pending",
    "in_transit",
    "succeeded",
    "failed",
    "canceled",
    "held"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PayoutStatus"
  def schema_name, do: @schema_name
end
