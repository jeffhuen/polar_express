# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationFeatureSettings do
  @moduledoc """
  OrganizationFeatureSettings
  """

  @typedoc """
  * `issue_funding_enabled` - If this organization has issue funding enabled
  * `member_model_enabled` - If this organization has the Member model enabled
  * `presentment_currencies_enabled` - If this organization has multiple presentment currencies enabled
  * `revops_enabled` - If this organization has RevOps enabled
  * `seat_based_pricing_enabled` - If this organization has seat-based pricing enabled
  * `tinybird_compare` - If this organization compares Tinybird results with database
  * `tinybird_read` - If this organization reads from Tinybird
  * `wallets_enabled` - If this organization has Wallets enabled
  """
  @type t :: %__MODULE__{
          issue_funding_enabled: boolean() | nil,
          member_model_enabled: boolean() | nil,
          presentment_currencies_enabled: boolean() | nil,
          revops_enabled: boolean() | nil,
          seat_based_pricing_enabled: boolean() | nil,
          tinybird_compare: boolean() | nil,
          tinybird_read: boolean() | nil,
          wallets_enabled: boolean() | nil
        }

  defstruct [
    :issue_funding_enabled,
    :member_model_enabled,
    :presentment_currencies_enabled,
    :revops_enabled,
    :seat_based_pricing_enabled,
    :tinybird_compare,
    :tinybird_read,
    :wallets_enabled
  ]

  @schema_name "OrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
