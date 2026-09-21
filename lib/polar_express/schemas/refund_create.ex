# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefundCreate do
  @moduledoc """
  RefundCreate
  """

  @typedoc """
  * `amount` - Amount to refund in cents. Minimum is 1.
  * `comment` - An internal comment about the refund. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `order_id` - Format: uuid4.
  * `reason` - Reason for the refund. Possible values: `duplicate`, `fraudulent`, `customer_request`, `service_disruption`, `satisfaction_guarantee`, `other`.
  * `revoke_benefits` - Should this refund trigger the associated customer benefits to be revoked?

  **Note:**
  Only allowed in case the `order` is a one-time purchase.
  Subscriptions automatically revoke customer benefits once the
  subscription itself is revoked, i.e fully canceled.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :comment, :metadata, :order_id, :reason, :revoke_benefits]

  @schema_name "RefundCreate"
  def schema_name, do: @schema_name
end
