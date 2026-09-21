# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ConfidenceLevel do
  @moduledoc """
  How much we trust an insight, derived from sample size and baseline variance.

  Low-confidence insights are softened or suppressed so small merchants don't
  get noise (e.g. "churn doubled" off a 1 -> 2 customer change).

  Possible values: `low`, `medium`, `high`
  """

  @type t :: String.t()

  @values [
    "low",
    "medium",
    "high"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "ConfidenceLevel"
  def schema_name, do: @schema_name
end
