# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionChangePreviewProduct do
  @moduledoc """
  CustomerSubscriptionChangePreviewProduct
  """

  @typedoc """
  * `product_id` - Preview a change of the subscription to this product. Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:product_id]

  @schema_name "CustomerSubscriptionChangePreviewProduct"
  def schema_name, do: @schema_name
end
