# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentTrigger do
  @moduledoc "PaymentTrigger enum. Possible values: `purchase`, `subscription_cycle`, `retry_dunning`, `retry_customer`, `retry_payment_method_update`, `retry_admin`, `retry_payment_alert`."

  @type t :: String.t()

  @values [
    "purchase",
    "subscription_cycle",
    "retry_dunning",
    "retry_customer",
    "retry_payment_method_update",
    "retry_admin",
    "retry_payment_alert"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PaymentTrigger"
  def schema_name, do: @schema_name
end
