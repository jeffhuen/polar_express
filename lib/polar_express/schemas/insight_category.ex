# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.InsightCategory do
  @moduledoc """
  Buckets an insight by which aspect of the business it speaks to.

  Possible values: `revenue`, `retention`, `growth`, `risk`, `cost`, `product`
  """

  @type t :: String.t()

  @values [
    "revenue",
    "retention",
    "growth",
    "risk",
    "cost",
    "product"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "InsightCategory"
  def schema_name, do: @schema_name
end
