# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedDiscountMetadata do
  @moduledoc """
  SubscriptionUpdatedDiscountMetadata
  """

  @typedoc """
  * `discount_id` - Nullable.
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:discount_id, :subscription_id]

  @schema_name "SubscriptionUpdatedDiscountMetadata"
  def schema_name, do: @schema_name
end
