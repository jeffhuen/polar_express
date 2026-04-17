# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdatedProductMetadata do
  @moduledoc """
  SubscriptionUpdatedProductMetadata
  """

  @typedoc """
  * `product_id`
  * `proration_behavior`
  * `subscription_id`
  """
  @type t :: %__MODULE__{
          product_id: String.t() | nil,
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:product_id, :proration_behavior, :subscription_id]

  @schema_name "SubscriptionUpdatedProductMetadata"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end
end
