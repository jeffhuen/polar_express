# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationFeatureSettings do
  @moduledoc """
  OrganizationFeatureSettings
  """

  @typedoc """
  * `checkout_localization_enabled` - If this organization has checkout localization enabled
  * `issue_funding_enabled` - If this organization has issue funding enabled
  * `member_model_enabled` - If this organization has the Member model enabled
  * `overview_metrics` - Ordered list of metric slugs shown on the dashboard overview. Nullable.
  * `reset_proration_behavior_enabled` - If this organization has access to reset proration behavior.
  * `seat_based_pricing_enabled` - If this organization has seat-based pricing enabled
  * `tinybird_compare` - If this organization compares Tinybird results with database
  * `tinybird_read` - If this organization reads from Tinybird
  * `wallets_enabled` - If this organization has Wallets enabled
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checkout_localization_enabled,
    :issue_funding_enabled,
    :member_model_enabled,
    :overview_metrics,
    :reset_proration_behavior_enabled,
    :seat_based_pricing_enabled,
    :tinybird_compare,
    :tinybird_read,
    :wallets_enabled
  ]

  @schema_name "OrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
