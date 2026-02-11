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
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: String.t() | nil,
          recurring_interval_count: integer() | nil,
          started_at: String.t() | nil,
          subscription_id: String.t() | nil
        }

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
