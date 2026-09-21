# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationCutoverStatus do
  @moduledoc """
  What the cutover did with an imported subscription.

  Only subscription records ever carry one, and only once the cutover has
  looked at them: ``None`` means "not attempted", which is also what every
  other record type keeps forever.

  Possible values: `moved`, `skipped`, `failed`
  """

  @type t :: String.t()

  @values [
    "moved",
    "skipped",
    "failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MerchantMigrationCutoverStatus"
  def schema_name, do: @schema_name
end
