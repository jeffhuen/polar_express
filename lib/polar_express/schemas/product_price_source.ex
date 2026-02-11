# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceSource do
  @moduledoc "ProductPriceSource enum. Possible values: `catalog`, `ad_hoc`."

  @type t :: String.t()

  @values ["catalog", "ad_hoc"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "ProductPriceSource"
  def schema_name, do: @schema_name
end
