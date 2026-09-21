# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutGenerateInvoice do
  @moduledoc """
  PayoutGenerateInvoice
  """

  @typedoc """
  * `invoice_number` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:invoice_number]

  @schema_name "PayoutGenerateInvoice"
  def schema_name, do: @schema_name
end
