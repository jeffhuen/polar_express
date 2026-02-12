# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookFormat do
  @moduledoc "WebhookFormat enum. Possible values: `raw`, `discord`, `slack`."

  @type t :: String.t()

  @values [
    "raw",
    "discord",
    "slack"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "WebhookFormat"
  def schema_name, do: @schema_name
end
