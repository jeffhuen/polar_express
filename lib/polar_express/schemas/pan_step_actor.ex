# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepActor do
  @moduledoc """
  Who is asking to move a step, which decides what they're allowed to move.

  Possible values: `merchant`, `ops`, `system`
  """

  @type t :: String.t()

  @values [
    "merchant",
    "ops",
    "system"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PanStepActor"
  def schema_name, do: @schema_name
end
