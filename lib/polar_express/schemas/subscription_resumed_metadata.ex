# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionResumedMetadata do
  @moduledoc """
  SubscriptionResumedMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :subscription_id
  ]

  @schema_name "SubscriptionResumedMetadata"
  def schema_name, do: @schema_name
end
