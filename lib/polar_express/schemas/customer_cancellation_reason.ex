# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerCancellationReason do
  @moduledoc "CustomerCancellationReason enum. Possible values: `customer_service`, `low_quality`, `missing_features`, `switched_service`, `too_complex`, `too_expensive`, `unused`, `other`."

  @type t :: String.t()

  @values [
    "customer_service",
    "low_quality",
    "missing_features",
    "switched_service",
    "too_complex",
    "too_expensive",
    "unused",
    "other"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerCancellationReason"
  def schema_name, do: @schema_name
end
