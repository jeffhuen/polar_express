# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionType do
  @moduledoc """
  Type of transactions.

  Possible values: `payment`, `processor_fee`, `refund`, `refund_reversal`, `dispute`, `dispute_reversal`, `balance`, `payout`, `payout_reversal`
  """

  @type t :: String.t()

  @values [
    "payment",
    "processor_fee",
    "refund",
    "refund_reversal",
    "dispute",
    "dispute_reversal",
    "balance",
    "payout",
    "payout_reversal"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "TransactionType"
  def schema_name, do: @schema_name
end
