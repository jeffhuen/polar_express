# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefundPaymentAlreadyRefundedByStripe do
  @moduledoc """
  RefundPaymentAlreadyRefundedByStripe
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "RefundPaymentAlreadyRefundedByStripe"
  def schema_name, do: @schema_name
end
