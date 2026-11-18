# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationFeatureSettings do
  @moduledoc """
  OrganizationFeatureSettings
  """

  @typedoc """
  * `checkout_localization_enabled` - If this organization has checkout localization enabled
  * `config_as_code_enabled` - If this organization can manage its configuration from a declarative config document.
  * `dispute_auto_accept_enabled` - If this organization can set a threshold below which Polar concedes disputes on its behalf. Requires `disputes_enabled`.
  * `disputes_enabled` - If this organization has the disputes dashboard enabled
  * `issue_funding_enabled` - If this organization has issue funding enabled
  * `merchant_migration_enabled` - If this organization can migrate its billing from another provider (e.g. Stripe) to Polar.
  * `off_session_charges_enabled` - If this organization can create and finalize draft orders via the API (off-session charges against a saved payment method).
  * `overview_metrics` - Ordered list of metric slugs shown on the dashboard overview. Nullable.
  * `preview_access_enabled` - If this organization has preview access to new features enabled
  * `reducer_billing_enabled` - If this organization's metered usage is billed from the reducer instead of the legacy billing entries.
  * `reset_proration_behavior_enabled` - If this organization has access to reset proration behavior.
  * `slack_benefit_enabled` - Enables the slack shared channel benefit
  * `sso_enabled` - If this organization has single sign-on configuration enabled
  * `staged_events_ingest_enabled` - If this organization's ingested events are queued in `staged_events` and moved to `events` out of band.
  * `wallets_enabled` - If this organization has Wallets enabled
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checkout_localization_enabled,
    :config_as_code_enabled,
    :dispute_auto_accept_enabled,
    :disputes_enabled,
    :issue_funding_enabled,
    :merchant_migration_enabled,
    :off_session_charges_enabled,
    :overview_metrics,
    :preview_access_enabled,
    :reducer_billing_enabled,
    :reset_proration_behavior_enabled,
    :slack_benefit_enabled,
    :sso_enabled,
    :staged_events_ingest_enabled,
    :wallets_enabled
  ]

  @schema_name "OrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
