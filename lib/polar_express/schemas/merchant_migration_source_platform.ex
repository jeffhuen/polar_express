# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationSourcePlatform do
  @moduledoc "MerchantMigrationSourcePlatform enum. Possible values: `stripe`, `lemon_squeezy`, `paddle`."

  @type t :: String.t()

  @values [
    "stripe",
    "lemon_squeezy",
    "paddle"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MerchantMigrationSourcePlatform"
  def schema_name, do: @schema_name
end
