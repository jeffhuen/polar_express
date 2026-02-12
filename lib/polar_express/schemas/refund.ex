# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Refund do
  @moduledoc """
  Refund
  """

  @typedoc """
  * `amount`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `customer_id` - Format: uuid4.
  * `dispute` - Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - Format: uuid4.
  * `organization_id` - Format: uuid4.
  * `reason`
  * `revoke_benefits`
  * `status`
  * `subscription_id` - Nullable.
  * `tax_amount`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          customer_id: String.t() | nil,
          dispute: PolarExpress.Schemas.RefundDispute.t() | nil,
          id: String.t() | nil,
          metadata: PolarExpress.Schemas.MetadataOutputType.t() | nil,
          modified_at: DateTime.t() | nil,
          order_id: String.t() | nil,
          organization_id: String.t() | nil,
          reason: PolarExpress.Schemas.RefundReason.t() | nil,
          revoke_benefits: boolean() | nil,
          status: PolarExpress.Schemas.RefundStatus.t() | nil,
          subscription_id: String.t() | nil,
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

  @schema_name "Refund"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "dispute" => PolarExpress.Schemas.RefundDispute,
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "reason" => PolarExpress.Schemas.RefundReason,
      "status" => PolarExpress.Schemas.RefundStatus
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
