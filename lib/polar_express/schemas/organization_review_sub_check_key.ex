# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewSubCheckKey do
  @moduledoc """
  Stable identifiers for nested sub-checks inside a parent check.

  Possible values: `setup_readiness.checkout_link`, `setup_readiness.access_token`, `setup_readiness.webhook`
  """

  @type t :: String.t()

  @values [
    "setup_readiness.checkout_link",
    "setup_readiness.access_token",
    "setup_readiness.webhook"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationReviewSubCheckKey"
  def schema_name, do: @schema_name
end
