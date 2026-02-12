# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantSortProperty do
  @moduledoc "CustomerBenefitGrantSortProperty enum. Possible values: `granted_at`, `-granted_at`, `type`, `-type`, `organization`, `-organization`, `product_benefit`, `-product_benefit`."

  @type t :: String.t()

  @values [
    "granted_at",
    "-granted_at",
    "type",
    "-type",
    "organization",
    "-organization",
    "product_benefit",
    "-product_benefit"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "CustomerBenefitGrantSortProperty"
  def schema_name, do: @schema_name
end
