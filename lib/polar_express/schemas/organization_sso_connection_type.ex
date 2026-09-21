# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSSOConnectionType do
  @moduledoc "OrganizationSSOConnectionType enum. Possible values: `oidc`."

  @type t :: String.t()

  @values [
    "oidc"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationSSOConnectionType"
  def schema_name, do: @schema_name
end
