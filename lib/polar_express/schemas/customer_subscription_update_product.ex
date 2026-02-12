# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionUpdateProduct do
  @moduledoc """
  CustomerSubscriptionUpdateProduct
  """

  @typedoc """
  * `product_id` - Update subscription to another product. Format: uuid4.
  """
  @type t :: %__MODULE__{
          product_id: String.t() | nil
        }

  defstruct [:product_id]

  @schema_name "CustomerSubscriptionUpdateProduct"
  def schema_name, do: @schema_name
end
