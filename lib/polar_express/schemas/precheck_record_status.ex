# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PrecheckRecordStatus do
  @moduledoc "PrecheckRecordStatus enum. Possible values: `importable`, `skipped`."

  @type t :: String.t()

  @values [
    "importable",
    "skipped"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PrecheckRecordStatus"
  def schema_name, do: @schema_name
end
