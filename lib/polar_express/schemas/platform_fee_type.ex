# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PlatformFeeType do
  @moduledoc """
  Type of fees applied by Polar, and billed to the users.

  Possible values: `payment`, `international_payment`, `subscription`, `invoice`, `cross_border_transfer`, `payout`, `account`, `dispute`, `fee_credit`, `platform`
  """

  @type t :: String.t()

  @values [
    "payment",
    "international_payment",
    "subscription",
    "invoice",
    "cross_border_transfer",
    "payout",
    "account",
    "dispute",
    "fee_credit",
    "platform"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PlatformFeeType"
  def schema_name, do: @schema_name
end
