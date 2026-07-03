# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionCycledMetadata do
  @moduledoc """
  SubscriptionCycledMetadata
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

  @schema_name "SubscriptionCycledMetadata"
  def schema_name, do: @schema_name
end
