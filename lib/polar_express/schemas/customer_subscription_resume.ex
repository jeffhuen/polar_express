# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionResume do
  @moduledoc """
  CustomerSubscriptionResume
  """

  @typedoc """
  * `resume` - Resume a paused subscription immediately, starting a new billing period and charging the customer.
  """
  @type t :: %__MODULE__{}

  defstruct [:resume]

  @schema_name "CustomerSubscriptionResume"
  def schema_name, do: @schema_name
end
