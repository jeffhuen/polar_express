# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerType do
  @moduledoc "CustomerType enum. Possible values: `individual`, `team`."

  @type t :: String.t()

  @values ["individual", "team"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerType"
  def schema_name, do: @schema_name
end
