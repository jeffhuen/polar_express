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
  * `subscription_cycled_after_trial`
  * `subscription_past_due`
  * `subscription_renewal_reminder`
  * `subscription_revoked`
  * `subscription_trial_conversion_reminder`
  * `subscription_uncanceled`
  * `subscription_updated`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :order_confirmation,
    :subscription_cancellation,
    :subscription_confirmation,
    :subscription_cycled,
    :subscription_cycled_after_trial,
    :subscription_past_due,
    :subscription_renewal_reminder,
    :subscription_revoked,
    :subscription_trial_conversion_reminder,
    :subscription_uncanceled,
    :subscription_updated
  ]

  @schema_name "OrganizationCustomerEmailSettings"
  def schema_name, do: @schema_name
end
