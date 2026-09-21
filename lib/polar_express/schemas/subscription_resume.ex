# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionResume do
  @moduledoc """
  SubscriptionResume
  """

  @typedoc """
  * `resume` - Resume a paused subscription immediately, starting a new billing period and charging the customer.
  """
  @type t :: %__MODULE__{}

  defstruct [:resume]

  @schema_name "SubscriptionResume"
  def schema_name, do: @schema_name
end
