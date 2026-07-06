# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateBase do
  @moduledoc """
  SubscriptionUpdateBase
  """

  @typedoc """
  * `discount_id` - Update the subscription to apply a new discount. If set to `null`, the discount will be removed. The change will be applied on the next billing cycle. Nullable.
  * `product_id` - Update subscription to another product. Nullable.
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  * `trial_end` - Set or extend the trial period of the subscription. If set to `now`, the trial will end immediately. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:discount_id, :product_id, :proration_behavior, :trial_end]

  @schema_name "SubscriptionUpdateBase"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end

  def __date_fields__, do: [:trial_end]
end
