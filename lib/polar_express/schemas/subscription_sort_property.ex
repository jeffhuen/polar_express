# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionSortProperty do
  @moduledoc "SubscriptionSortProperty enum. Possible values: `customer`, `-customer`, `status`, `-status`, `started_at`, `-started_at`, `current_period_end`, `-current_period_end`, `ended_at`, `-ended_at`, `ends_at`, `-ends_at`, `amount`, `-amount`, `product`, `-product`, `discount`, `-discount`."

  @type t :: String.t()

  @values [
    "customer",
    "-customer",
    "status",
    "-status",
    "started_at",
    "-started_at",
    "current_period_end",
    "-current_period_end",
    "ended_at",
    "-ended_at",
    "ends_at",
    "-ends_at",
    "amount",
    "-amount",
    "product",
    "-product",
    "discount",
    "-discount"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SubscriptionSortProperty"
  def schema_name, do: @schema_name
end
