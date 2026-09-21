# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepOwner do
  @moduledoc """
  Who moves a step forward.

  Possible values: `merchant`, `polar_ops`, `polar_app`, `stripe`, `provider`
  """

  @type t :: String.t()

  @values [
    "merchant",
    "polar_ops",
    "polar_app",
    "stripe",
    "provider"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PanStepOwner"
  def schema_name, do: @schema_name
end
