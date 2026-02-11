# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DisputeStatus do
  @moduledoc "DisputeStatus enum. Possible values: `prevented`, `early_warning`, `needs_response`, `under_review`, `lost`, `won`."

  @type t :: String.t()

  @values ["prevented", "early_warning", "needs_response", "under_review", "lost", "won"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "DisputeStatus"
  def schema_name, do: @schema_name
end
