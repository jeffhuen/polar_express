# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Dispute do
  @moduledoc """
  Dispute

  Schema representing a dispute.

  A dispute is a challenge raised by a customer or their bank regarding a payment.
  """

  @typedoc """
  * `amount` - Amount in cents disputed.
  * `case_id` - The ID of the support case for this dispute, if one was opened. Nullable.
  * `closed` - Whether the dispute is closed (prevented, won, or lost).
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - Currency code of the dispute.
  * `customer` - The customer who was charged for the disputed payment.
  * `evidence_due_by` - Deadline to submit evidence in response to the dispute. `None` when no response is required. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - The ID of the order associated with the dispute. Format: uuid4.
  * `past_due` - Whether the evidence submission deadline has passed.
  * `payment_id` - The ID of the payment associated with the dispute. Format: uuid4.
  * `reason` - The reason for the dispute as reported by the card network (e.g. `fraudulent`, `product_not_received`). `None` until the processor reports it. Nullable.
  * `resolved` - Whether the dispute has been resolved (won or lost).
  * `status` - Status of the dispute. `prevented` means we issued a refund before the dispute was escalated, avoiding any fees.
  * `tax_amount` - Tax amount in cents disputed.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :case_id,
    :closed,
    :created_at,
    :currency,
    :customer,
    :evidence_due_by,
    :id,
    :modified_at,
    :order_id,
    :past_due,
    :payment_id,
    :reason,
    :resolved,
    :status,
    :tax_amount
  ]

  @schema_name "Dispute"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer" => PolarExpress.Schemas.DisputeCustomer,
      "status" => PolarExpress.Schemas.DisputeStatus
    }
  end

  def __date_fields__, do: [:created_at, :evidence_due_by, :modified_at]
end
