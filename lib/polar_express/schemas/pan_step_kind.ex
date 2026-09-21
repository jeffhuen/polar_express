# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepKind do
  @moduledoc """
  What the owner has to do, which is what the frontend renders.

  Possible values: `auto`, `input`, `confirm`
  """

  @type t :: String.t()

  @values [
    "auto",
    "input",
    "confirm"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PanStepKind"
  def schema_name, do: @schema_name
end
