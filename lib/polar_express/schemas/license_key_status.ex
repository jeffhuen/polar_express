# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyStatus do
  @moduledoc "LicenseKeyStatus enum. Possible values: `granted`, `revoked`, `disabled`."

  @type t :: String.t()

  @values [
    "granted",
    "revoked",
    "disabled"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "LicenseKeyStatus"
  def schema_name, do: @schema_name
end
