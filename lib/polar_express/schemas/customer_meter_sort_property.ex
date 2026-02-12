# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerMeterSortProperty do
  @moduledoc "CustomerMeterSortProperty enum. Possible values: `created_at`, `-created_at`, `modified_at`, `-modified_at`, `customer_id`, `-customer_id`, `customer_name`, `-customer_name`, `meter_id`, `-meter_id`, `meter_name`, `-meter_name`, `consumed_units`, `-consumed_units`, `credited_units`, `-credited_units`, `balance`, `-balance`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "modified_at",
    "-modified_at",
    "customer_id",
    "-customer_id",
    "customer_name",
    "-customer_name",
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

  @schema_name "CustomerMeterSortProperty"
  def schema_name, do: @schema_name
end
