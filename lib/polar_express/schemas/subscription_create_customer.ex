# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionCreateCustomer do
  @moduledoc """
  SubscriptionCreateCustomer

  Create a subscription for an existing customer.
  """

  @typedoc """
  * `customer_id` - The ID of the customer to create the subscription for. Format: uuid4.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `product_id` - The ID of the recurring product to subscribe to. Must be a free product, otherwise the customer should go through a checkout flow. Format: uuid4.
  """
  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          product_id: String.t() | nil
        }

  defstruct [:customer_id, :metadata, :product_id]

  @schema_name "SubscriptionCreateCustomer"
  def schema_name, do: @schema_name
end
