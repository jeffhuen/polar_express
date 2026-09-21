# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WalletType do
  @moduledoc "WalletType enum. Possible values: `usage`, `billing`."

  @type t :: String.t()

  @values [
    "usage",
    "billing"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "WalletType"
  def schema_name, do: @schema_name
end
