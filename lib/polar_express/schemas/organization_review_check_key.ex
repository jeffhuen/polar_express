# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewCheckKey do
  @moduledoc """
  Stable identifiers for each check. Adding a new key is a coordinated FE+BE change.

  Possible values: `identity.email`, `identity.social_links`, `identity.stripe_identity_verification`, `product_description`, `product_url`, `payout_account`, `product_configuration`, `setup_readiness`
  """

  @type t :: String.t()

  @values [
    "identity.email",
    "identity.social_links",
    "identity.stripe_identity_verification",
    "product_description",
    "product_url",
    "payout_account",
    "product_configuration",
    "setup_readiness"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationReviewCheckKey"
  def schema_name, do: @schema_name
end
