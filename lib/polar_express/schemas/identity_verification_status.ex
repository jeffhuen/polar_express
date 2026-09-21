# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.IdentityVerificationStatus do
  @moduledoc "IdentityVerificationStatus enum. Possible values: `unverified`, `pending`, `verified`, `failed`."

  @type t :: String.t()

  @values [
    "unverified",
    "pending",
    "verified",
    "failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "IdentityVerificationStatus"
  def schema_name, do: @schema_name
end
