# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPermission do
  @moduledoc "OrganizationPermission enum. Possible values: `organization:manage`, `members:read`, `members:manage`, `products:read`, `products:manage`, `custom_fields:read`, `custom_fields:manage`, `customers:read`, `customers:manage`, `sales:read`, `sales:manage`, `analytics:read`, `analytics:manage`, `events:ingest`, `finance:read`, `finance:manage`."

  @type t :: String.t()

  @values [
    "organization:manage",
    "members:read",
    "members:manage",
    "products:read",
    "products:manage",
    "custom_fields:read",
    "custom_fields:manage",
    "customers:read",
    "customers:manage",
    "sales:read",
    "sales:manage",
    "analytics:read",
    "analytics:manage",
    "events:ingest",
    "finance:read",
    "finance:manage"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationPermission"
  def schema_name, do: @schema_name
end
