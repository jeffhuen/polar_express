# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PrecheckReasonLevel do
  @moduledoc "PrecheckReasonLevel enum. Possible values: `action_required`, `info`."

  @type t :: String.t()

  @values [
    "action_required",
    "info"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PrecheckReasonLevel"
  def schema_name, do: @schema_name
end
