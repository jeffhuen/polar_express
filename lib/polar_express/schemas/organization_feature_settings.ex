# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationFeatureSettings do
  @moduledoc """
  OrganizationFeatureSettings
  """

  @typedoc """
  * `checkout_localization_enabled` - If this organization has checkout localization enabled
  * `compass_enabled` - If this organization has the split product navigation (Billing / Compass / Customers) enabled in the dashboard
  * `disputes_enabled` - If this organization has the disputes dashboard enabled
  * `issue_funding_enabled` - If this organization has issue funding enabled
  * `member_model_enabled` - If this organization has the Member model enabled
  * `off_session_charges_enabled` - If this organization can create and finalize draft orders via the API (off-session charges against a saved payment method).
  * `overview_metrics` - Ordered list of metric slugs shown on the dashboard overview. Nullable.
  * `preview_access_enabled` - If this organization has preview access to new features enabled
  * `reset_proration_behavior_enabled` - If this organization has access to reset proration behavior.
  * `seat_based_pricing_enabled` - If this organization has seat-based pricing enabled
  * `slack_benefit_enabled` - Enables the slack shared channel benefit
  * `sso_enabled` - If this organization has single sign-on configuration enabled
  * `wallets_enabled` - If this organization has Wallets enabled
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checkout_localization_enabled,
    :compass_enabled,
    :disputes_enabled,
    :issue_funding_enabled,
    :member_model_enabled,
    :off_session_charges_enabled,
    :overview_metrics,
    :preview_access_enabled,
    :reset_proration_behavior_enabled,
    :seat_based_pricing_enabled,
    :slack_benefit_enabled,
    :sso_enabled,
    :wallets_enabled
  ]

  @schema_name "OrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
