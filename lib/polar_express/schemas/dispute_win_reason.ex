# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DisputeWinReason do
  @moduledoc """
  Why the merchant believes they should win the chargeback.

  Collected on their counter submission to help support gather the right
  evidence before submitting to the card network.

  Possible values: `cardholder_withdrew`, `cardholder_refunded`, `rightful_cardholder`, `other`
  """

  @type t :: String.t()

  @values [
    "cardholder_withdrew",
    "cardholder_refunded",
    "rightful_cardholder",
    "other"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "DisputeWinReason"
  def schema_name, do: @schema_name
end
