# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionMigratedMetadata do
  @moduledoc """
  SubscriptionMigratedMetadata
  """

  @typedoc """
  * `product_id`
  * `provider`
  * `provider_subscription_id`
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:product_id, :provider, :provider_subscription_id, :subscription_id]

  @schema_name "SubscriptionMigratedMetadata"
  def schema_name, do: @schema_name
end
