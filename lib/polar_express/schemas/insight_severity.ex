# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.InsightSeverity do
  @moduledoc """
  How much the merchant should care, assigned per insight by its detector.

  This is a property of what was *found*, not of the detector: the same MRR
  detector emits `warning` when revenue falls and `info` when it grows. The
  feed is ordered by severity first, so the most consequential reading always
  leads.

  Possible values: `critical`, `warning`, `opportunity`, `info`
  """

  @type t :: String.t()

  @values [
    "critical",
    "warning",
    "opportunity",
    "info"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "InsightSeverity"
  def schema_name, do: @schema_name
end
