# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitVisibility do
  @moduledoc "BenefitVisibility enum. Possible values: `draft`, `private`, `public`."

  @type t :: String.t()

  @values [
    "draft",
    "private",
    "public"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "BenefitVisibility"
  def schema_name, do: @schema_name
end
