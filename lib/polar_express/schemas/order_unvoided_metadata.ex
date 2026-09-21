# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderUnvoidedMetadata do
  @moduledoc """
  OrderUnvoidedMetadata
  """

  @typedoc """
  * `amount`
  * `currency`
  * `order_id`
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :currency, :order_id]

  @schema_name "OrderUnvoidedMetadata"
  def schema_name, do: @schema_name
end
