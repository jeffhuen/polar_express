# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserDeletionBlockedReason do
  @moduledoc """
  Reasons why a user account cannot be immediately deleted.

  Possible values: `has_active_organizations`
  """

  @type t :: String.t()

  @values [
    "has_active_organizations"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "UserDeletionBlockedReason"
  def schema_name, do: @schema_name
end
