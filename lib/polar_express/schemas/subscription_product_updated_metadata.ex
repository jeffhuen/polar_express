# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionProductUpdatedMetadata do
  @moduledoc """
  SubscriptionProductUpdatedMetadata
  """

  @typedoc """
  * `new_product_id`
  * `old_product_id`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:new_product_id, :old_product_id, :subscription_id]

  @schema_name "SubscriptionProductUpdatedMetadata"
  def schema_name, do: @schema_name
end
