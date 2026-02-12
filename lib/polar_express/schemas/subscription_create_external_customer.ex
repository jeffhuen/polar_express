# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionCreateExternalCustomer do
  @moduledoc """
  SubscriptionCreateExternalCustomer

  Create a subscription for an existing customer identified by an external ID.
  """

  @typedoc """
  * `external_customer_id` - The ID of the customer in your system to create the subscription for. It must already exist in Polar.
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
          external_customer_id: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          product_id: String.t() | nil
        }

  defstruct [:external_customer_id, :metadata, :product_id]

  @schema_name "SubscriptionCreateExternalCustomer"
  def schema_name, do: @schema_name
end
