# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateDiscount do
  @moduledoc """
  SubscriptionUpdateDiscount
  """

  @typedoc """
  * `discount_id` - Update the subscription to apply a new discount. If set to `null`, the discount will be removed. The change will be applied on the next billing cycle. Nullable.
  """
  @type t :: %__MODULE__{
          discount_id: String.t() | nil
        }

  defstruct [:discount_id]

  @schema_name "SubscriptionUpdateDiscount"
  def schema_name, do: @schema_name
end
