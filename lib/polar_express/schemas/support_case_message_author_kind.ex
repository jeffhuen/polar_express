# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseMessageAuthorKind do
  @moduledoc "SupportCaseMessageAuthorKind enum. Possible values: `platform`, `merchant`, `customer`, `system`."

  @type t :: String.t()

  @values [
    "platform",
    "merchant",
    "customer",
    "system"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SupportCaseMessageAuthorKind"
  def schema_name, do: @schema_name
end
