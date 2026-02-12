# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionProrationBehavior do
  @moduledoc "SubscriptionProrationBehavior enum. Possible values: `invoice`, `prorate`."

  @type t :: String.t()

  @values [
    "invoice",
    "prorate"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SubscriptionProrationBehavior"
  def schema_name, do: @schema_name
end
