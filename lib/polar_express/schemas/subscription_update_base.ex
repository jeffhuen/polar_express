# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateBase do
  @moduledoc """
  SubscriptionUpdateBase
  """

  @typedoc """
  * `discount_id` - Update the subscription to apply a new discount. If set to `null`, the discount will be removed. The change will be applied on the next billing cycle. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `product_id` - Update subscription to another product. Nullable.
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  * `trial_end` - Set or extend the trial period of the subscription. If set to `now`, the trial will end immediately. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:discount_id, :metadata, :product_id, :proration_behavior, :trial_end]

  @schema_name "SubscriptionUpdateBase"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end

  def __date_fields__, do: [:trial_end]
end
