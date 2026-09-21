# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewCheckStatus do
  @moduledoc "OrganizationReviewCheckStatus enum. Possible values: `passed`, `warning`, `failed`, `pending`."

  @type t :: String.t()

  @values [
    "passed",
    "warning",
    "failed",
    "pending"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationReviewCheckStatus"
  def schema_name, do: @schema_name
end
