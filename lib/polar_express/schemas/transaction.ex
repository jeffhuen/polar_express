# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Transaction do
  @moduledoc """
  Transaction
  """

  @typedoc """
  * `account_amount`
  * `account_currency`
  * `account_incurred_transactions`
  * `amount`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `exchange_rate` - Nullable.
  * `gross_amount`
  * `id` - The ID of the object. Format: uuid4.
  * `incurred_amount`
  * `incurred_by_transaction_id` - Nullable.
  * `issue_reward` - Nullable.
  * `issue_reward_id` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `net_amount`
  * `order` - Nullable.
  * `order_id` - Nullable.
  * `payment_transaction` - Nullable.
  * `payout_transaction_id` - Nullable.
  * `platform_fee_type` - Nullable.
  * `pledge` - Nullable.
  * `pledge_id` - Nullable.
  * `presentment_amount` - Nullable.
  * `presentment_currency` - Nullable.
  * `presentment_tax_amount` - Nullable.
  * `processor` - Nullable.
  * `tax_amount`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :account_amount,
    :account_currency,
    :account_incurred_transactions,
    :amount,
    :created_at,
    :currency,
    :exchange_rate,
    :gross_amount,
    :id,
    :incurred_amount,
    :incurred_by_transaction_id,
    :issue_reward,
    :issue_reward_id,
    :modified_at,
    :net_amount,
    :order,
    :order_id,
    :payment_transaction,
    :payout_transaction_id,
    :platform_fee_type,
    :pledge,
    :pledge_id,
    :presentment_amount,
    :presentment_currency,
    :presentment_tax_amount,
    :processor,
    :tax_amount,
    :type
  ]

  @schema_name "Transaction"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "account_incurred_transactions" => PolarExpress.Schemas.TransactionEmbedded,
      "issue_reward" => PolarExpress.Schemas.TransactionIssueReward,
      "order" => PolarExpress.Schemas.TransactionOrder,
      "payment_transaction" => PolarExpress.Schemas.TransactionEmbedded,
      "platform_fee_type" => PolarExpress.Schemas.PlatformFeeType,
      "pledge" => PolarExpress.Schemas.TransactionPledge,
      "processor" => PolarExpress.Schemas.Processor,
      "type" => PolarExpress.Schemas.TransactionType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
