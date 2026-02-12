# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAccessTokenSortProperty do
  @moduledoc "OrganizationAccessTokenSortProperty enum. Possible values: `created_at`, `-created_at`, `comment`, `-comment`, `last_used_at`, `-last_used_at`, `organization_id`, `-organization_id`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "comment",
    "-comment",
    "last_used_at",
    "-last_used_at",
    "organization_id",
    "-organization_id"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationAccessTokenSortProperty"
  def schema_name, do: @schema_name
end
