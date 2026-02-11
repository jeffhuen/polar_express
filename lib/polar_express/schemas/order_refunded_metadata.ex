# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderRefundedMetadata do
  @moduledoc """
  OrderRefundedMetadata
  """

  @typedoc """
  * `currency`
  * `order_id`
  * `refunded_amount`
  """
  @type t :: %__MODULE__{
          currency: String.t() | nil,
          order_id: String.t() | nil,
          refunded_amount: integer() | nil
        }

  defstruct [:currency, :order_id, :refunded_amount]

  @schema_name "OrderRefundedMetadata"
  def schema_name, do: @schema_name
end
