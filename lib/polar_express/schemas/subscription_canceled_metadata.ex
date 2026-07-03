# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionCanceledMetadata do
  @moduledoc """
  SubscriptionCanceledMetadata
  """

  @typedoc """
  * `amount`
  * `cancel_at_period_end`
  * `canceled_at`
  * `currency`
  * `customer_cancellation_comment`
  * `customer_cancellation_reason`
  * `ends_at`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :cancel_at_period_end,
    :canceled_at,
    :currency,
    :customer_cancellation_comment,
    :customer_cancellation_reason,
    :ends_at,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :subscription_id
  ]

  @schema_name "SubscriptionCanceledMetadata"
  def schema_name, do: @schema_name
end
