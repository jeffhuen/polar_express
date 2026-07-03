# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCustomerPortalSettings do
  @moduledoc """
  OrganizationCustomerPortalSettings
  """

  @typedoc """
  * `customer`
  * `subscription`
  * `usage`
  """
  @type t :: %__MODULE__{}

  defstruct [:customer, :subscription, :usage]

  @schema_name "OrganizationCustomerPortalSettings"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer" => PolarExpress.Schemas.CustomerPortalCustomerSettings,
      "subscription" => PolarExpress.Schemas.CustomerPortalSubscriptionSettings,
      "usage" => PolarExpress.Schemas.CustomerPortalUsageSettings
    }
  end
end
