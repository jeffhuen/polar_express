# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionStatus do
  @moduledoc "SubscriptionStatus enum. Possible values: `incomplete`, `incomplete_expired`, `trialing`, `active`, `past_due`, `canceled`, `unpaid`."

  @type t :: String.t()

  @values [
    "incomplete",
    "incomplete_expired",
    "trialing",
    "active",
    "past_due",
    "canceled",
    "unpaid"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SubscriptionStatus"
  def schema_name, do: @schema_name
end
