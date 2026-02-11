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
  @type t :: %__MODULE__{
          new_product_id: String.t() | nil,
          old_product_id: String.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:new_product_id, :old_product_id, :subscription_id]

  @schema_name "SubscriptionProductUpdatedMetadata"
  def schema_name, do: @schema_name
end
