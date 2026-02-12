# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerWalletSortProperty do
  @moduledoc "CustomerWalletSortProperty enum. Possible values: `created_at`, `-created_at`, `balance`, `-balance`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "balance",
    "-balance"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerWalletSortProperty"
  def schema_name, do: @schema_name
end
