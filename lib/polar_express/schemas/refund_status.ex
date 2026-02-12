# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefundStatus do
  @moduledoc "RefundStatus enum. Possible values: `pending`, `succeeded`, `failed`, `canceled`."

  @type t :: String.t()

  @values [
    "pending",
    "succeeded",
    "failed",
    "canceled"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "RefundStatus"
  def schema_name, do: @schema_name
end
