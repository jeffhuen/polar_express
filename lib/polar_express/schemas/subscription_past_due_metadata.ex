# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionPastDueMetadata do
  @moduledoc """
  SubscriptionPastDueMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `past_due_at`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `subscription_id`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          past_due_at: String.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: String.t() | nil,
          recurring_interval_count: integer() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [
    :amount,
    :currency,
    :past_due_at,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :subscription_id
  ]

  @schema_name "SubscriptionPastDueMetadata"
  def schema_name, do: @schema_name
end
