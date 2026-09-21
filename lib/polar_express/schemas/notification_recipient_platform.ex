# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotificationRecipientPlatform do
  @moduledoc "NotificationRecipientPlatform enum. Possible values: `ios`, `android`."

  @type t :: String.t()

  @values [
    "ios",
    "android"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "NotificationRecipientPlatform"
  def schema_name, do: @schema_name
end
