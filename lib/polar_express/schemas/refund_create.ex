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
  * `reason`
  * `revoke_benefits` - Should this refund trigger the associated customer benefits to be revoked?

  **Note:**
  Only allowed in case the `order` is a one-time purchase.
  Subscriptions automatically revoke customer benefits once the
  subscription itself is revoked, i.e fully canceled.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          comment: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          order_id: String.t() | nil,
          reason: PolarExpress.Schemas.RefundReason.t() | nil,
          revoke_benefits: boolean() | nil
        }

  defstruct [:amount, :comment, :metadata, :order_id, :reason, :revoke_benefits]

  @schema_name "RefundCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "reason" => PolarExpress.Schemas.RefundReason
    }
  end
end
