# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventTypesSortProperty do
  @moduledoc "EventTypesSortProperty enum. Possible values: `name`, `-name`, `label`, `-label`, `occurrences`, `-occurrences`, `first_seen`, `-first_seen`, `last_seen`, `-last_seen`."

  @type t :: String.t()

  @values [
    "name",
    "-name",
    "label",
    "-label",
    "occurrences",
    "-occurrences",
    "first_seen",
    "-first_seen",
    "last_seen",
    "-last_seen"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "EventTypesSortProperty"
  def schema_name, do: @schema_name
end
