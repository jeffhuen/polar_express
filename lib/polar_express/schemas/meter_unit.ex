# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterUnit do
  @moduledoc "MeterUnit enum. Possible values: `scalar`, `token`, `custom`."

  @type t :: String.t()

  @values [
    "scalar",
    "token",
    "custom"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MeterUnit"
  def schema_name, do: @schema_name
end
