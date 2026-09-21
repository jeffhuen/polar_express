# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountStatus do
  @moduledoc "PayoutAccountStatus enum. Possible values: `incomplete`, `under_review`, `paused`, `ready`."

  @type t :: String.t()

  @values [
    "incomplete",
    "under_review",
    "paused",
    "ready"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PayoutAccountStatus"
  def schema_name, do: @schema_name
end
