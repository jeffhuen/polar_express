# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventNamesSortProperty do
  @moduledoc "EventNamesSortProperty enum. Possible values: `name`, `-name`, `occurrences`, `-occurrences`, `first_seen`, `-first_seen`, `last_seen`, `-last_seen`."

  @type t :: String.t()

  @values [
    "name",
    "-name",
    "occurrences",
    "-occurrences",
    "first_seen",
    "-first_seen",
    "last_seen",
    "-last_seen"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "EventNamesSortProperty"
  def schema_name, do: @schema_name
end
