# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationRole do
  @moduledoc "OrganizationRole enum. Possible values: `owner`, `admin`, `finance`, `member`."

  @type t :: String.t()

  @values [
    "owner",
    "admin",
    "finance",
    "member"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationRole"
  def schema_name, do: @schema_name
end
