# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewCheckReason do
  @moduledoc """
  Reasons explaining a check's status. Scoped reasons are namespaced
  with the prefix of the check key they apply to.

  Possible values: `not_started`, `not_authorized`, `in_progress`, `external_pending`, `identity.rejected`, `identity.personal_email`, `identity.domain_mismatch`, `product_url.unreachable`, `payout_account.requirements_due`, `payout_account.payouts_disabled`, `setup_readiness.webhook_missing`, `setup_readiness.checkout_link_not_fulfillable`
  """

  @type t :: String.t()

  @values [
    "not_started",
    "not_authorized",
    "in_progress",
    "external_pending",
    "identity.rejected",
    "identity.personal_email",
    "identity.domain_mismatch",
    "product_url.unreachable",
    "payout_account.requirements_due",
    "payout_account.payouts_disabled",
    "setup_readiness.webhook_missing",
    "setup_readiness.checkout_link_not_fulfillable"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationReviewCheckReason"
  def schema_name, do: @schema_name
end
