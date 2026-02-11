# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCustomerPortalSettings do
  @moduledoc """
  OrganizationCustomerPortalSettings
  """

  @typedoc """
  * `subscription`
  * `usage`
  """
  @type t :: %__MODULE__{
          subscription: PolarExpress.Schemas.CustomerPortalSubscriptionSettings.t() | nil,
          usage: PolarExpress.Schemas.CustomerPortalUsageSettings.t() | nil
        }

  defstruct [:subscription, :usage]

  @schema_name "OrganizationCustomerPortalSettings"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "subscription" => PolarExpress.Schemas.CustomerPortalSubscriptionSettings,
      "usage" => PolarExpress.Schemas.CustomerPortalUsageSettings
    }
  end
end
