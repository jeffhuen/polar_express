# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitType do
  @moduledoc "BenefitType enum. Possible values: `custom`, `discord`, `github_repository`, `downloadables`, `license_keys`, `meter_credit`."

  @type t :: String.t()

  @values [
    "custom",
    "discord",
    "github_repository",
    "downloadables",
    "license_keys",
    "meter_credit"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "BenefitType"
  def schema_name, do: @schema_name
end
