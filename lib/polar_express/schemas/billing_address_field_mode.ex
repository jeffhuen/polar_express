# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BillingAddressFieldMode do
  @moduledoc "BillingAddressFieldMode enum. Possible values: `required`, `optional`, `disabled`."

  @type t :: String.t()

  @values ["required", "optional", "disabled"]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "BillingAddressFieldMode"
  def schema_name, do: @schema_name
end
