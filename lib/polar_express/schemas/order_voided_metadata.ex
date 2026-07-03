# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderVoidedMetadata do
  @moduledoc """
  OrderVoidedMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `order_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :currency, :order_id]

  @schema_name "OrderVoidedMetadata"
  def schema_name, do: @schema_name
end
