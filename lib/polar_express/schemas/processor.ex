# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Processor do
  @moduledoc """
  Supported payment or payout processors, i.e rails for transactions.

  Possible values: `stripe`, `manual`
  """

  @type t :: String.t()

  @values [
    "stripe",
    "manual"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "Processor"
  def schema_name, do: @schema_name
end
