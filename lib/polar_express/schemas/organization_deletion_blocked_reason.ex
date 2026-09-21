# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationDeletionBlockedReason do
  @moduledoc """
  Reasons why an organization cannot be immediately deleted.

  Possible values: `has_orders`, `has_active_subscriptions`, `stripe_account_deletion_failed`
  """

  @type t :: String.t()

  @values [
    "has_orders",
    "has_active_subscriptions",
    "stripe_account_deletion_failed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "OrganizationDeletionBlockedReason"
  def schema_name, do: @schema_name
end
