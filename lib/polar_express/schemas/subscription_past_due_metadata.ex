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
  @type t :: %__MODULE__{}

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
