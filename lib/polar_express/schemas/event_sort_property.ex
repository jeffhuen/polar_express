# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventSortProperty do
  @moduledoc "EventSortProperty enum. Possible values: `timestamp`, `-timestamp`."

  @type t :: String.t()

  @values [
    "timestamp",
    "-timestamp"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "EventSortProperty"
  def schema_name, do: @schema_name
end
