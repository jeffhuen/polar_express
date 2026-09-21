# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationFeatureSettings do
  @moduledoc """
  OrganizationFeatureSettings
  """

  @typedoc """
  * `checkout_localization_enabled` - If this organization has checkout localization enabled
  * `compass_enabled` - If this organization has the split product navigation (Billing / Compass / Customers) enabled in the dashboard
  * `dispute_auto_accept_enabled` - If this organization can set a threshold below which Polar concedes disputes on its behalf. Requires `disputes_enabled`.
  * `disputes_enabled` - If this organization has the disputes dashboard enabled
  * `frame_ancestors_enforced` - If this organization's checkout tells the browser to refuse framing from any host outside its embed hosts.
  * `issue_funding_enabled` - If this organization has issue funding enabled
  * `member_model_enabled` - If this organization has the Member model enabled
  * `merchant_migration_enabled` - If this organization can migrate its billing from another provider (e.g. Stripe) to Polar.
  * `meter_cycling_enabled` - If this organization can set a separate meter cycle on recurring products (a meter interval independent of the billing interval).
  * `off_session_charges_enabled` - If this organization can create and finalize draft orders via the API (off-session charges against a saved payment method).
  * `overview_metrics` - Ordered list of metric slugs shown on the dashboard overview. Nullable.
  * `preview_access_enabled` - If this organization has preview access to new features enabled
  * `reset_proration_behavior_enabled` - If this organization has access to reset proration behavior.
  * `slack_benefit_enabled` - Enables the slack shared channel benefit
  * `sso_enabled` - If this organization has single sign-on configuration enabled
  * `wallets_enabled` - If this organization has Wallets enabled
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checkout_localization_enabled,
    :compass_enabled,
    :dispute_auto_accept_enabled,
    :disputes_enabled,
    :frame_ancestors_enforced,
    :issue_funding_enabled,
    :member_model_enabled,
    :merchant_migration_enabled,
    :meter_cycling_enabled,
    :off_session_charges_enabled,
    :overview_metrics,
    :preview_access_enabled,
    :reset_proration_behavior_enabled,
    :slack_benefit_enabled,
    :sso_enabled,
    :wallets_enabled
  ]

  @schema_name "OrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
