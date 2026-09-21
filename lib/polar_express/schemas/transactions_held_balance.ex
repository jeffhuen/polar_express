# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionsHeldBalance do
  @moduledoc """
  TransactionsHeldBalance
  """

  @typedoc """
  * `account_amount`
  * `account_currency`
  * `amount`
  * `currency`
  * `fully_available_at` - When the whole held balance has become available for payout. Nullable.
  * `next_release_account_amount` - Amount becoming available for payout at `next_release_at`, in the account's currency.
  * `next_release_amount` - Amount becoming available for payout at `next_release_at`.
  * `next_release_at` - When the next chunk of the held balance becomes available for payout. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :account_amount,
    :account_currency,
    :amount,
    :currency,
    :fully_available_at,
    :next_release_account_amount,
    :next_release_amount,
    :next_release_at
  ]

  @schema_name "TransactionsHeldBalance"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:fully_available_at, :next_release_at]
end
