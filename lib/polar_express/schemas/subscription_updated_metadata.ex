# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedMetadata do
  @moduledoc """
  SubscriptionUpdatedMetadata
  """

  @typedoc """
  * `billing_period_end`
  * `discount_id` - Nullable.
  * `product_id`
  * `proration_behavior`
  * `seats`
  * `subscription_id`
  * `trial_end`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :billing_period_end,
    :discount_id,
    :product_id,
    :proration_behavior,
    :seats,
    :subscription_id,
    :trial_end
  ]

  @schema_name "SubscriptionUpdatedMetadata"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
