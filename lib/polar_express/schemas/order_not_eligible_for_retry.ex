# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderNotEligibleForRetry do
  @moduledoc """
  OrderNotEligibleForRetry
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "OrderNotEligibleForRetry"
  def schema_name, do: @schema_name
end
