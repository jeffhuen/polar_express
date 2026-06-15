# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationFeatureSettingsUpdate do
  @moduledoc """
  OrganizationFeatureSettingsUpdate

  Feature settings that organizations can update themselves.

  Other feature settings are managed by Polar staff: they're ignored if
  provided and keep their current value.
  """

  @typedoc """
  * `checkout_localization_enabled` - If this organization has checkout localization enabled
  * `member_model_enabled` - If this organization has the Member model enabled
  * `overview_metrics` - Ordered list of metric slugs shown on the dashboard overview. Nullable.
  * `seat_based_pricing_enabled` - If this organization has seat-based pricing enabled
  """
  @type t :: %__MODULE__{
          checkout_localization_enabled: boolean() | nil,
          member_model_enabled: boolean() | nil,
          overview_metrics: [String.t()] | nil,
          seat_based_pricing_enabled: boolean() | nil
        }

  defstruct [
    :checkout_localization_enabled,
    :member_model_enabled,
    :overview_metrics,
    :seat_based_pricing_enabled
  ]

  @schema_name "OrganizationFeatureSettingsUpdate"
  def schema_name, do: @schema_name
end
