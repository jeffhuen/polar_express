# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionsBalance do
  @moduledoc """
  TransactionsBalance
  """

  @typedoc """
  * `account_amount`
  * `account_currency`
  * `amount`
  * `currency`
  """
  @type t :: %__MODULE__{}

  defstruct [:account_amount, :account_currency, :amount, :currency]

  @schema_name "TransactionsBalance"
  def schema_name, do: @schema_name
end
