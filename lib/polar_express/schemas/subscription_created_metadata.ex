# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionCreatedMetadata do
  @moduledoc """
  SubscriptionCreatedMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `started_at`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :started_at,
    :subscription_id
  ]

  @schema_name "SubscriptionCreatedMetadata"
  def schema_name, do: @schema_name
end
