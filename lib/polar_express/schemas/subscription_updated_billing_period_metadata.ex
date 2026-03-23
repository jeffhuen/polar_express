# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedBillingPeriodMetadata do
  @moduledoc """
  SubscriptionUpdatedBillingPeriodMetadata
  """

  @typedoc """
  * `billing_period_end`
  * `subscription_id`
  """
  @type t :: %__MODULE__{
          billing_period_end: String.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:billing_period_end, :subscription_id]

  @schema_name "SubscriptionUpdatedBillingPeriodMetadata"
  def schema_name, do: @schema_name
end
