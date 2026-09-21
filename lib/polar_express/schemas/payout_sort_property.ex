# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutSortProperty do
  @moduledoc "PayoutSortProperty enum. Possible values: `created_at`, `-created_at`, `amount`, `-amount`, `fees_amount`, `-fees_amount`, `status`, `-status`, `payout_account_id`, `-payout_account_id`."

  @type t :: String.t()

  @values [
    "created_at",
    "-created_at",
    "amount",
    "-amount",
    "fees_amount",
    "-fees_amount",
    "status",
    "-status",
    "payout_account_id",
    "-payout_account_id"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "PayoutSortProperty"
  def schema_name, do: @schema_name
end
