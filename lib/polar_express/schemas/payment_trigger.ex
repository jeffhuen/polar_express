# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentTrigger do
  @moduledoc "PaymentTrigger enum. Possible values: `purchase`, `subscription_cycle`, `retry_dunning`, `retry_customer`, `retry_payment_method_update`, `retry_admin`."

  @type t :: String.t()

  @values [
    "purchase",
    "subscription_cycle",
    "retry_dunning",
    "retry_customer",
    "retry_payment_method_update",
    "retry_admin"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PaymentTrigger"
  def schema_name, do: @schema_name
end
