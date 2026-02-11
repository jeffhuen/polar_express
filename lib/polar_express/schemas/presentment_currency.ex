# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PresentmentCurrency do
  @moduledoc "PresentmentCurrency enum. Possible values: `usd`."

  @type t :: String.t()

  @values ["usd"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PresentmentCurrency"
  def schema_name, do: @schema_name
end
