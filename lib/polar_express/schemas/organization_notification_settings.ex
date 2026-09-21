# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationNotificationSettings do
  @moduledoc """
  OrganizationNotificationSettings
  """

  @typedoc """
  * `chargeback_prevention`
  * `new_order`
  * `new_subscription`
  * `subscription_renewal`
  """
  @type t :: %__MODULE__{}

  defstruct [:chargeback_prevention, :new_order, :new_subscription, :subscription_renewal]

  @schema_name "OrganizationNotificationSettings"
  def schema_name, do: @schema_name
end
