# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefundReason do
  @moduledoc "RefundReason enum. Possible values: `duplicate`, `fraudulent`, `customer_request`, `service_disruption`, `satisfaction_guarantee`, `dispute_prevention`, `tax_refund`, `vat_reverse_charge_correction`, `other`."

  @type t :: String.t()

  @values [
    "duplicate",
    "fraudulent",
    "customer_request",
    "service_disruption",
    "satisfaction_guarantee",
    "dispute_prevention",
    "tax_refund",
    "vat_reverse_charge_correction",
    "other"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "RefundReason"
  def schema_name, do: @schema_name
end
