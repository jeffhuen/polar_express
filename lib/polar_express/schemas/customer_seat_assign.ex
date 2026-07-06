# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSeatAssign do
  @moduledoc """
  CustomerSeatAssign
  """

  @typedoc """
  * `checkout_id` - Checkout ID. Resolves to the subscription or order produced by the checkout. Nullable.
  * `customer_id` - Customer ID for the seat assignment Nullable.
  * `email` - Email of the customer to assign the seat to Nullable.
  * `external_customer_id` - External customer ID for the seat assignment Nullable.
  * `external_member_id` - External member ID for the seat assignment. Can be used alone (lookup existing member) or with email (create/validate member). Nullable.
  * `immediate_claim` - If true, the seat will be immediately claimed without sending an invitation email. API-only feature.
  * `member_id` - Member ID for the seat assignment. Nullable.
  * `metadata` - Additional metadata for the seat (max 10 keys, 1KB total) Nullable.
  * `order_id` - Order ID for one-time purchases. Required if subscription_id is not provided. Nullable.
  * `subscription_id` - Subscription ID. Required if neither order_id nor checkout_id is provided. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checkout_id,
    :customer_id,
    :email,
    :external_customer_id,
    :external_member_id,
    :immediate_claim,
    :member_id,
    :metadata,
    :order_id,
    :subscription_id
  ]

  @schema_name "CustomerSeatAssign"
  def schema_name, do: @schema_name
end
