# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionEmbedded do
  @moduledoc """
  TransactionEmbedded
  """

  @typedoc """
  * `account_amount`
  * `account_currency`
  * `amount`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `exchange_rate` - Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `incurred_by_transaction_id` - Nullable.
  * `issue_reward_id` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - Nullable.
  * `payout_transaction_id` - Nullable.
  * `platform_fee_type` - Nullable.
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
    :amount,
    :created_at,
    :currency,
    :exchange_rate,
    :id,
    :incurred_by_transaction_id,
    :issue_reward_id,
    :modified_at,
    :order_id,
    :payout_transaction_id,
    :platform_fee_type,
    :pledge_id,
    :presentment_amount,
    :presentment_currency,
    :presentment_tax_amount,
    :processor,
    :tax_amount,
    :type
  ]

  @schema_name "TransactionEmbedded"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "platform_fee_type" => PolarExpress.Schemas.PlatformFeeType,
      "processor" => PolarExpress.Schemas.Processor,
      "type" => PolarExpress.Schemas.TransactionType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
