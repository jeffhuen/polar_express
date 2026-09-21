# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PledgeState do
  @moduledoc "PledgeState enum. Possible values: `initiated`, `created`, `pending`, `refunded`, `disputed`, `charge_disputed`, `cancelled`."

  @type t :: String.t()

  @values [
    "initiated",
    "created",
    "pending",
    "refunded",
    "disputed",
    "charge_disputed",
    "cancelled"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PledgeState"
  def schema_name, do: @schema_name
end
