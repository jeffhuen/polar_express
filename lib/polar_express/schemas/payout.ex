# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Payout do
  @moduledoc """
  Payout
  """

  @typedoc """
  * `account_amount`
  * `account_currency`
  * `account_id` - Format: uuid4.
  * `amount`
  * `attempts`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `fees_amount`
  * `fees_transactions`
  * `gross_amount`
  * `id` - The ID of the object. Format: uuid4.
  * `invoice_number` - Nullable.
  * `is_invoice_generated`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `paid_at` - Nullable.
  * `processor`
  * `status`
  * `transaction_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :account_amount,
    :account_currency,
    :account_id,
    :amount,
    :attempts,
    :created_at,
    :currency,
    :fees_amount,
    :fees_transactions,
    :gross_amount,
    :id,
    :invoice_number,
    :is_invoice_generated,
    :modified_at,
    :paid_at,
    :processor,
    :status,
    :transaction_id
  ]

  @schema_name "Payout"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "attempts" => PolarExpress.Schemas.PayoutAttempt,
      "fees_transactions" => PolarExpress.Schemas.TransactionEmbedded,
      "processor" => PolarExpress.Schemas.PayoutAccountType,
      "status" => PolarExpress.Schemas.PayoutStatus
    }
  end

  def __date_fields__, do: [:created_at, :modified_at, :paid_at]
end
