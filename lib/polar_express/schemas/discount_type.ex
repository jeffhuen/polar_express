# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountType do
  @moduledoc "DiscountType enum. Possible values: `fixed`, `percentage`."

  @type t :: String.t()

  @values ["fixed", "percentage"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "DiscountType"
  def schema_name, do: @schema_name
end
