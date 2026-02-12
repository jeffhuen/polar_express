# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderBillingReasonInternal do
  @moduledoc """
  Internal billing reasons with additional granularity.

  Possible values: `purchase`, `subscription_create`, `subscription_cycle`, `subscription_cycle_after_trial`, `subscription_update`
  """

  @type t :: String.t()

  @values [
    "purchase",
    "subscription_create",
    "subscription_cycle",
    "subscription_cycle_after_trial",
    "subscription_update"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrderBillingReasonInternal"
  def schema_name, do: @schema_name
end
