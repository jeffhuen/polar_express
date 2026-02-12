# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LegacyOrganizationStatus do
  @moduledoc """
  Legacy organization status values kept for backward compatibility in schemas
  using OrganizationPublicBase.

  Possible values: `created`, `onboarding_started`, `under_review`, `denied`, `active`
  """

  @type t :: String.t()

  @values [
    "created",
    "onboarding_started",
    "under_review",
    "denied",
    "active"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "LegacyOrganizationStatus"
  def schema_name, do: @schema_name
end
