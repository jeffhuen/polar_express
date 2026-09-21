# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepStatus do
  @moduledoc "PanStepStatus enum. Possible values: `blocked`, `pending`, `in_progress`, `completed`."

  @type t :: String.t()

  @values [
    "blocked",
    "pending",
    "in_progress",
    "completed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PanStepStatus"
  def schema_name, do: @schema_name
end
