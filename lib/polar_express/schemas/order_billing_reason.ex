# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderBillingReason do
  @moduledoc "OrderBillingReason enum. Possible values: `purchase`, `subscription_create`, `subscription_cycle`, `subscription_update`, `subscription_meter_cycle`."

  @type t :: String.t()

  @values [
    "purchase",
    "subscription_create",
    "subscription_cycle",
    "subscription_update",
    "subscription_meter_cycle"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrderBillingReason"
  def schema_name, do: @schema_name
end
