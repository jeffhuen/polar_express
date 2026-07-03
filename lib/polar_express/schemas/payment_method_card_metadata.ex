# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodCardMetadata do
  @moduledoc """
  PaymentMethodCardMetadata
  """

  @typedoc """
  * `brand`
  * `exp_month`
  * `exp_year`
  * `last4`
  * `wallet` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:brand, :exp_month, :exp_year, :last4, :wallet]

  @schema_name "PaymentMethodCardMetadata"
  def schema_name, do: @schema_name
end
