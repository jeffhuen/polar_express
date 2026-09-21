# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionNotScheduledToCancel do
  @moduledoc """
  SubscriptionNotScheduledToCancel
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SubscriptionNotScheduledToCancel"
  def schema_name, do: @schema_name
end
