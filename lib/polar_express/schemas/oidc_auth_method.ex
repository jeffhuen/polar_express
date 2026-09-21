# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OIDCAuthMethod do
  @moduledoc "OIDCAuthMethod enum. Possible values: `client_secret`, `private_key_jwt`."

  @type t :: String.t()

  @values [
    "client_secret",
    "private_key_jwt"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OIDCAuthMethod"
  def schema_name, do: @schema_name
end
