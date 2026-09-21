# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseMessageType do
  @moduledoc """
  Known message types. Stored as a plain string column (not a DB enum):
  ``chat`` and lifecycle values are generic, while action values are
  domain-specific and grow per case type. Validated at the app boundary.

  Possible values: `chat`, `opened`, `closed`, `assigned`, `released`, `appeal_approved`, `appeal_denied`, `info_requested`, `dispute_under_review`, `dispute_won`, `dispute_lost`, `dispute_prevented`, `merchant_accepted`, `dispute_auto_accept_scheduled`, `dispute_auto_accept_canceled`, `dispute_auto_accepted`
  """

  @type t :: String.t()

  @values [
    "chat",
    "opened",
    "closed",
    "assigned",
    "released",
    "appeal_approved",
    "appeal_denied",
    "info_requested",
    "dispute_under_review",
    "dispute_won",
    "dispute_lost",
    "dispute_prevented",
    "merchant_accepted",
    "dispute_auto_accept_scheduled",
    "dispute_auto_accept_canceled",
    "dispute_auto_accepted"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "SupportCaseMessageType"
  def schema_name, do: @schema_name
end
