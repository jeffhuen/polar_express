# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOAuthPlatform do
  @moduledoc "CustomerOAuthPlatform enum. Possible values: `github`, `discord`."

  @type t :: String.t()

  @values [
    "github",
    "discord"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerOAuthPlatform"
  def schema_name, do: @schema_name
end
