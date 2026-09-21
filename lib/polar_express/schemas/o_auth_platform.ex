# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OAuthPlatform do
  @moduledoc "OAuthPlatform enum. Possible values: `github`, `github_repository_benefit`, `google`, `apple`."

  @type t :: String.t()

  @values [
    "github",
    "github_repository_benefit",
    "google",
    "apple"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OAuthPlatform"
  def schema_name, do: @schema_name
end
