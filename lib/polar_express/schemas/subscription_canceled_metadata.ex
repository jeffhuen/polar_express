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
  @type t :: %__MODULE__{
          amount: integer() | nil,
          cancel_at_period_end: boolean() | nil,
          canceled_at: String.t() | nil,
          currency: String.t() | nil,
          customer_cancellation_comment: String.t() | nil,
          customer_cancellation_reason: String.t() | nil,
          ends_at: String.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: String.t() | nil,
          recurring_interval_count: integer() | nil,
          subscription_id: String.t() | nil
        }

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
