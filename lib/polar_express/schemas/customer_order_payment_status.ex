# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderPaymentStatus do
  @moduledoc """
  CustomerOrderPaymentStatus

  Payment status for an order.
  """

  @typedoc """
  * `error` - Error message if payment failed. Nullable.
  * `status` - Current payment status.
  """
  @type t :: %__MODULE__{
          error: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:error, :status]

  @schema_name "CustomerOrderPaymentStatus"
  def schema_name, do: @schema_name
end
