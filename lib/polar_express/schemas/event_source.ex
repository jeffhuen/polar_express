# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventSource do
  @moduledoc "EventSource enum. Possible values: `system`, `user`."

  @type t :: String.t()

  @values ["system", "user"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "EventSource"
  def schema_name, do: @schema_name
end
