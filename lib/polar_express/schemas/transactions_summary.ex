# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionsSummary do
  @moduledoc """
  TransactionsSummary
  """

  @typedoc """
  * `available_balance`
  * `balance`
  * `held_balance`
  * `payout`
  """
  @type t :: %__MODULE__{}

  defstruct [:available_balance, :balance, :held_balance, :payout]

  @schema_name "TransactionsSummary"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "available_balance" => PolarExpress.Schemas.TransactionsBalance,
      "balance" => PolarExpress.Schemas.TransactionsBalance,
      "held_balance" => PolarExpress.Schemas.TransactionsHeldBalance,
      "payout" => PolarExpress.Schemas.TransactionsBalance
    }
  end
end
