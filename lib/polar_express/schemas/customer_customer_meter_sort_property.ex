# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerCustomerMeterSortProperty do
  @moduledoc "CustomerCustomerMeterSortProperty enum. Possible values: `created_at`, `-created_at`, `modified_at`, `-modified_at`, `meter_id`, `-meter_id`, `meter_name`, `-meter_name`, `consumed_units`, `-consumed_units`, `credited_units`, `-credited_units`, `balance`, `-balance`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "modified_at",
    "-modified_at",
    "meter_id",
    "-meter_id",
    "meter_name",
    "-meter_name",
    "consumed_units",
    "-consumed_units",
    "credited_units",
    "-credited_units",
    "balance",
    "-balance"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerCustomerMeterSortProperty"
  def schema_name, do: @schema_name
end
