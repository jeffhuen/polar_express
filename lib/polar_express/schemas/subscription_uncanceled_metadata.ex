# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUncanceledMetadata do
  @moduledoc """
  SubscriptionUncanceledMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `subscription_id`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          currency: String.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: String.t() | nil,
          recurring_interval_count: integer() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [
    :amount,
    :currency,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :subscription_id
  ]

  @schema_name "SubscriptionUncanceledMetadata"
  def schema_name, do: @schema_name
end
