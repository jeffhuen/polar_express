# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationOperationStatus do
  @moduledoc "MerchantMigrationOperationStatus enum. Possible values: `pending`, `running`, `done`, `failed`."

  @type t :: String.t()

  @values [
    "pending",
    "running",
    "done",
    "failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MerchantMigrationOperationStatus"
  def schema_name, do: @schema_name
end
