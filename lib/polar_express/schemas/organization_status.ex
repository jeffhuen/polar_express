# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationStatus do
  @moduledoc "OrganizationStatus enum. Possible values: `created`, `onboarding_started`, `initial_review`, `ongoing_review`, `denied`, `active`."

  @type t :: String.t()

  @values [
    "created",
    "onboarding_started",
    "initial_review",
    "ongoing_review",
    "denied",
    "active"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationStatus"
  def schema_name, do: @schema_name
end
