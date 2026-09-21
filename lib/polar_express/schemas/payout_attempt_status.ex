# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAttemptStatus do
  @moduledoc "PayoutAttemptStatus enum. Possible values: `pending`, `in_transit`, `succeeded`, `failed`."

  @type t :: String.t()

  @values [
    "pending",
    "in_transit",
    "succeeded",
    "failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PayoutAttemptStatus"
  def schema_name, do: @schema_name
end
