# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrderFinalize do
  @moduledoc """
  OrderFinalize

  Schema to finalize a draft order and trigger an off-session charge.
  """

  @typedoc """
  * `payment_method_id` - ID of the payment method to charge. Must belong to the order's customer. Falls back to the customer's default payment method when unset. Nullable.
  """
  @type t :: %__MODULE__{
          payment_method_id: String.t() | nil
        }

  defstruct [:payment_method_id]

  @schema_name "OrderFinalize"
  def schema_name, do: @schema_name
end
