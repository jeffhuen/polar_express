# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AppealDecision do
  @moduledoc "AppealDecision enum. Possible values: `approved`, `rejected`."

  @type t :: String.t()

  @values [
    "approved",
    "rejected"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "AppealDecision"
  def schema_name, do: @schema_name
end
