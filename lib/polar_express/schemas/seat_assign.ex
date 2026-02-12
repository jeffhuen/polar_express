# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SeatAssign do
  @moduledoc """
  SeatAssign
  """

  @typedoc """
  * `checkout_id` - Checkout ID. Used to look up subscription or order from the checkout page. Nullable.
  * `customer_id` - Customer ID for the seat assignment Nullable.
  * `email` - Email of the customer to assign the seat to Nullable.
  * `external_customer_id` - External customer ID for the seat assignment Nullable.
  * `external_member_id` - External member ID for the seat assignment. Only supported when member_model_enabled is true. Can be used alone (lookup existing member) or with email (create/validate member). Nullable.
  * `immediate_claim` - If true, the seat will be immediately claimed without sending an invitation email. API-only feature.
  * `member_id` - Member ID for the seat assignment. Only supported when member_model_enabled is true. Nullable.
  * `metadata` - Additional metadata for the seat (max 10 keys, 1KB total) Nullable.
  * `order_id` - Order ID for one-time purchases. Required if subscription_id and checkout_id are not provided. Nullable.
  * `subscription_id` - Subscription ID. Required if checkout_id and order_id are not provided. Nullable.
  """
  @type t :: %__MODULE__{
          checkout_id: String.t() | nil,
          customer_id: String.t() | nil,
          email: String.t() | nil,
          external_customer_id: String.t() | nil,
          external_member_id: String.t() | nil,
          immediate_claim: boolean() | nil,
          member_id: String.t() | nil,
          metadata: map() | nil,
          order_id: String.t() | nil,
          subscription_id: String.t() | nil
        }

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

  @schema_name "SeatAssign"
  def schema_name, do: @schema_name
end
