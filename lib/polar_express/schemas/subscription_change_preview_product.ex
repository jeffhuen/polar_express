# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionChangePreviewProduct do
  @moduledoc """
  SubscriptionChangePreviewProduct
  """

  @typedoc """
  * `product_id` - Preview a change of the subscription to this product. Format: uuid4.
  * `proration_behavior` - Determine how to handle the proration billing. If not provided, will use the default organization setting. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:product_id, :proration_behavior]

  @schema_name "SubscriptionChangePreviewProduct"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
