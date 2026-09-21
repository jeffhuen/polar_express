# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionExportColumn do
  @moduledoc "SubscriptionExportColumn enum. Possible values: `email`, `started_at`, `product`, `amount`, `currency`, `status`, `recurring_interval`, `customer_name`, `billing_name`, `billing_country`, `net_amount`, `discount`, `seats`, `current_period_start`, `current_period_end`, `cancel_at_period_end`, `canceled_at`, `ends_at`, `ended_at`, `cancellation_reason`, `trial_start`, `trial_end`."

  @type t :: String.t()

  @values [
    "email",
    "started_at",
    "product",
    "amount",
    "currency",
    "status",
    "recurring_interval",
    "customer_name",
    "billing_name",
    "billing_country",
    "net_amount",
    "discount",
    "seats",
    "current_period_start",
    "current_period_end",
    "cancel_at_period_end",
    "canceled_at",
    "ends_at",
    "ended_at",
    "cancellation_reason",
    "trial_start",
    "trial_end"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SubscriptionExportColumn"
  def schema_name, do: @schema_name
end
