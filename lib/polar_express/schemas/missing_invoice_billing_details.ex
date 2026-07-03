# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MissingInvoiceBillingDetails do
  @moduledoc """
  MissingInvoiceBillingDetails
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "MissingInvoiceBillingDetails"
  def schema_name, do: @schema_name
end
