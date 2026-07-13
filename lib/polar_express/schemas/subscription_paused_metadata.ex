# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionPausedMetadata do
  @moduledoc """
  SubscriptionPausedMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `paused_at`
  * `product_id`
  * `recurring_interval`
  * `recurring_interval_count`
  * `resumes_at`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :paused_at,
    :product_id,
    :recurring_interval,
    :recurring_interval_count,
    :resumes_at,
    :subscription_id
  ]

  @schema_name "SubscriptionPausedMetadata"
  def schema_name, do: @schema_name
end
