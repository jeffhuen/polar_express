# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationRecordStatus do
  @moduledoc "MerchantMigrationRecordStatus enum. Possible values: `pending`, `imported`, `skipped`, `failed`."

  @type t :: String.t()

  @values [
    "pending",
    "imported",
    "skipped",
    "failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MerchantMigrationRecordStatus"
  def schema_name, do: @schema_name
end
