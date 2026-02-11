# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubType do
  @moduledoc "SubType enum. Possible values: `user`, `organization`."

  @type t :: String.t()

  @values ["user", "organization"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SubType"
  def schema_name, do: @schema_name
end
