# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCapabilities do
  @moduledoc """
  OrganizationCapabilities
  """

  @typedoc """
  * `api_access` - Whether the organization can access the API.
  * `checkout_payments` - Whether the organization can accept new checkout payments.
  * `dashboard_access` - Whether the organization can access the dashboard.
  * `payouts` - Whether the organization can withdraw its balance.
  * `refunds` - Whether the organization can issue refunds.
  * `subscription_renewals` - Whether the organization can process subscription renewals.
  """
  @type t :: %__MODULE__{
          api_access: boolean() | nil,
          checkout_payments: boolean() | nil,
          dashboard_access: boolean() | nil,
          payouts: boolean() | nil,
          refunds: boolean() | nil,
          subscription_renewals: boolean() | nil
        }

  defstruct [
    :api_access,
    :checkout_payments,
    :dashboard_access,
    :payouts,
    :refunds,
    :subscription_renewals
  ]

  @schema_name "OrganizationCapabilities"
  def schema_name, do: @schema_name
end
