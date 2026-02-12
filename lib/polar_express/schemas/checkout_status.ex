# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutStatus do
  @moduledoc "CheckoutStatus enum. Possible values: `open`, `expired`, `confirmed`, `succeeded`, `failed`."

  @type t :: String.t()

  @values [
    "open",
    "expired",
    "confirmed",
    "succeeded",
    "failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CheckoutStatus"
  def schema_name, do: @schema_name
end
