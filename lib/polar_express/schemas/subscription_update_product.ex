# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateProduct do
  @moduledoc """
  SubscriptionUpdateProduct
  """

  @typedoc """
  * `product_id` - Update subscription to another product. Format: uuid4.
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  """
  @type t :: %__MODULE__{
          product_id: String.t() | nil,
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil
        }

  defstruct [:product_id, :proration_behavior]

  @schema_name "SubscriptionUpdateProduct"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
