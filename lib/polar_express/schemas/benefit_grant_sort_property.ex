# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantSortProperty do
  @moduledoc "BenefitGrantSortProperty enum. Possible values: `created_at`, `-created_at`, `granted_at`, `-granted_at`, `revoked_at`, `-revoked_at`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "granted_at",
    "-granted_at",
    "revoked_at",
    "-revoked_at"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "BenefitGrantSortProperty"
  def schema_name, do: @schema_name
end
