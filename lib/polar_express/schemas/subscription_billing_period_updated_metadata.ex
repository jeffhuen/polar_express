# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionBillingPeriodUpdatedMetadata do
  @moduledoc """
  SubscriptionBillingPeriodUpdatedMetadata
  """

  @typedoc """
  * `new_period_end`
  * `old_period_end`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:new_period_end, :old_period_end, :subscription_id]

  @schema_name "SubscriptionBillingPeriodUpdatedMetadata"
  def schema_name, do: @schema_name
end
