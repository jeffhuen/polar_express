# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSortProperty do
  @moduledoc "OrganizationSortProperty enum. Possible values: `created_at`, `-created_at`, `slug`, `-slug`, `name`, `-name`, `next_review_threshold`, `-next_review_threshold`, `days_in_status`, `-days_in_status`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "slug",
    "-slug",
    "name",
    "-name",
    "next_review_threshold",
    "-next_review_threshold",
    "days_in_status",
    "-days_in_status"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationSortProperty"
  def schema_name, do: @schema_name
end
