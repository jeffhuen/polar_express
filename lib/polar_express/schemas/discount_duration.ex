# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountDuration do
  @moduledoc "DiscountDuration enum. Possible values: `once`, `forever`, `repeating`."

  @type t :: String.t()

  @values ["once", "forever", "repeating"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "DiscountDuration"
  def schema_name, do: @schema_name
end
