# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationNotificationSettings do
  @moduledoc """
  OrganizationNotificationSettings
  """

  @typedoc """
  * `chargeback_prevention`
  * `exclude_free_products`
  * `new_order`
  * `new_subscription`
  * `new_trial`
  * `subscription_cancellation`
  * `subscription_renewal`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :chargeback_prevention,
    :exclude_free_products,
    :new_order,
    :new_subscription,
    :new_trial,
    :subscription_cancellation,
    :subscription_renewal
  ]

  @schema_name "OrganizationNotificationSettings"
  def schema_name, do: @schema_name
end
