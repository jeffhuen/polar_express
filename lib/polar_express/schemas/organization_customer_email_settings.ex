# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCustomerEmailSettings do
  @moduledoc """
  OrganizationCustomerEmailSettings
  """

  @typedoc """
  * `order_confirmation`
  * `subscription_cancellation`
  * `subscription_confirmation`
  * `subscription_cycled`
  * `subscription_past_due`
  * `subscription_revoked`
  * `subscription_uncanceled`
  * `subscription_updated`
  """
  @type t :: %__MODULE__{
          order_confirmation: boolean() | nil,
          subscription_cancellation: boolean() | nil,
          subscription_confirmation: boolean() | nil,
          subscription_cycled: boolean() | nil,
          subscription_past_due: boolean() | nil,
          subscription_revoked: boolean() | nil,
          subscription_uncanceled: boolean() | nil,
          subscription_updated: boolean() | nil
        }

  defstruct [
    :order_confirmation,
    :subscription_cancellation,
    :subscription_confirmation,
    :subscription_cycled,
    :subscription_past_due,
    :subscription_revoked,
    :subscription_uncanceled,
    :subscription_updated
  ]

  @schema_name "OrganizationCustomerEmailSettings"
  def schema_name, do: @schema_name
end
