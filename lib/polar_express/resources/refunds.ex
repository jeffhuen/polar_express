# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Refunds do
  @moduledoc """
  Refunds

  Refunds API operations.
  """

  @typedoc """
  * `amount`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `customer_id` - Format: uuid4.
  * `dispute`
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `order_id` - Format: uuid4.
  * `organization_id` - Format: uuid4.
  * `reason`
  * `revoke_benefits`
  * `status`
  * `subscription_id`
  * `tax_amount`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          customer_id: String.t() | nil,
          dispute: term() | nil,
          id: String.t() | nil,
          metadata: map() | nil,
          modified_at: term() | nil,
          order_id: String.t() | nil,
          organization_id: String.t() | nil,
          reason: map() | nil,
          revoke_benefits: boolean() | nil,
          status: map() | nil,
          subscription_id: term() | nil,
          tax_amount: integer() | nil
        }

  defstruct [
    :amount,
    :created_at,
    :currency,
    :customer_id,
    :dispute,
    :id,
    :metadata,
    :modified_at,
    :order_id,
    :organization_id,
    :reason,
    :revoke_benefits,
    :status,
    :subscription_id,
    :tax_amount
  ]

  @object_name "refunds"
  def object_name, do: @object_name
end
