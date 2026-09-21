# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationStep do
  @moduledoc "MerchantMigrationStep enum. Possible values: `source_setup`, `pre_check`, `create_catalog`, `copy_cards`, `activate_subscriptions`, `cleanup`, `completed`."

  @type t :: String.t()

  @values [
    "source_setup",
    "pre_check",
    "create_catalog",
    "copy_cards",
    "activate_subscriptions",
    "cleanup",
    "completed"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "MerchantMigrationStep"
  def schema_name, do: @schema_name
end
