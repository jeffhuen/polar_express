# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Dispute do
  @moduledoc """
  Dispute

  Schema representing a dispute.

  A dispute is a challenge raised by a customer or their bank regarding a payment.
  """

  @typedoc """
  * `amount` - Amount in cents disputed.
  * `closed` - Whether the dispute is closed (prevented, won, or lost).
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - Currency code of the dispute.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - The ID of the order associated with the dispute. Format: uuid4.
  * `payment_id` - The ID of the payment associated with the dispute. Format: uuid4.
  * `resolved` - Whether the dispute has been resolved (won or lost).
  * `status` - Status of the dispute. `prevented` means we issued a refund before the dispute was escalated, avoiding any fees.
  * `tax_amount` - Tax amount in cents disputed.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          closed: boolean() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          order_id: String.t() | nil,
          payment_id: String.t() | nil,
          resolved: boolean() | nil,
          status: PolarExpress.Schemas.DisputeStatus.t() | nil,
          tax_amount: integer() | nil
        }

  defstruct [
    :amount,
    :closed,
    :created_at,
    :currency,
    :id,
    :modified_at,
    :order_id,
    :payment_id,
    :resolved,
    :status,
    :tax_amount
  ]

  @schema_name "Dispute"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.DisputeStatus
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
