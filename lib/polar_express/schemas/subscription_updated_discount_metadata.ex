# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedDiscountMetadata do
  @moduledoc """
  SubscriptionUpdatedDiscountMetadata
  """

  @typedoc """
  * `discount_id` - Nullable.
  * `subscription_id`
  """
  @type t :: %__MODULE__{
          discount_id: String.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:discount_id, :subscription_id]

  @schema_name "SubscriptionUpdatedDiscountMetadata"
  def schema_name, do: @schema_name
end
