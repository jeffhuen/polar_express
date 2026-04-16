# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationStatus do
  @moduledoc "OrganizationStatus enum. Possible values: `created`, `review`, `snoozed`, `denied`, `active`, `blocked`, `offboarding`."

  @type t :: String.t()

  @values [
    "created",
    "review",
    "snoozed",
    "denied",
    "active",
    "blocked",
    "offboarding"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationStatus"
  def schema_name, do: @schema_name
end
