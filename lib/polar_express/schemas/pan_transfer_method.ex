# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanTransferMethod do
  @moduledoc """
  How the cards reach Polar's Stripe account.

  Possible values: `pan_copy`, `pan_import`
  """

  @type t :: String.t()

  @values [
    "pan_copy",
    "pan_import"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PanTransferMethod"
  def schema_name, do: @schema_name
end
