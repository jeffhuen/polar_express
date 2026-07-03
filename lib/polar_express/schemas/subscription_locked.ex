# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionLocked do
  @moduledoc """
  SubscriptionLocked
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SubscriptionLocked"
  def schema_name, do: @schema_name
end
