# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountType do
  @moduledoc "PayoutAccountType enum. Possible values: `stripe`, `manual`."

  @type t :: String.t()

  @values [
    "stripe",
    "manual"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PayoutAccountType"
  def schema_name, do: @schema_name
end
