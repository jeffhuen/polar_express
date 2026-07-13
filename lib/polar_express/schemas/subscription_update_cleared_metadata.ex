# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateClearedMetadata do
  @moduledoc """
  SubscriptionUpdateClearedMetadata
  """

  @typedoc """
  * `subscription_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:subscription_id]

  @schema_name "SubscriptionUpdateClearedMetadata"
  def schema_name, do: @schema_name
end
