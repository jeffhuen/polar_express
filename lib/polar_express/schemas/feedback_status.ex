# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FeedbackStatus do
  @moduledoc "FeedbackStatus enum. Possible values: `new`, `triaged`."

  @type t :: String.t()

  @values [
    "new",
    "triaged"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "FeedbackStatus"
  def schema_name, do: @schema_name
end
