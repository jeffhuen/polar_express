# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseType do
  @moduledoc "SupportCaseType enum. Possible values: `review_appeal`, `dispute`."

  @type t :: String.t()

  @values [
    "review_appeal",
    "dispute"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SupportCaseType"
  def schema_name, do: @schema_name
end
