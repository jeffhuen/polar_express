# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FeedbackType do
  @moduledoc "FeedbackType enum. Possible values: `bug`, `feedback`, `question`."

  @type t :: String.t()

  @values [
    "bug",
    "feedback",
    "question"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "FeedbackType"
  def schema_name, do: @schema_name
end
