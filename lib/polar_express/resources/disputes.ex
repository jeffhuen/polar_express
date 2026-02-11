# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Disputes do
  @moduledoc """
  Disputes

  Disputes API operations.
  """

  @typedoc """
  * `amount` - Amount in cents disputed.
  * `closed` - Whether the dispute is closed (prevented, won, or lost).
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - Currency code of the dispute.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  * `order_id` - The ID of the order associated with the dispute. Format: uuid4.
  * `payment_id` - The ID of the payment associated with the dispute. Format: uuid4.
  * `resolved` - Whether the dispute has been resolved (won or lost).
  * `status` - Status of the dispute. `prevented` means we issued a refund before the dispute was escalated, avoiding any fees.
  * `tax_amount` - Tax amount in cents disputed.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          closed: boolean() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          id: String.t() | nil,
          modified_at: map() | nil,
          order_id: String.t() | nil,
          payment_id: String.t() | nil,
          resolved: boolean() | nil,
          status: map() | nil,
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

  @object_name "disputes"
  def object_name, do: @object_name
end
