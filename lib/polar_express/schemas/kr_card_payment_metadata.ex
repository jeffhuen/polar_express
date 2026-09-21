# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.KrCardPaymentMetadata do
  @moduledoc """
  KrCardPaymentMetadata

  Additional metadata for a South Korean card payment method.
  """

  @typedoc """
  * `brand` - The local South Korean card brand used for the payment. Nullable.
  * `last4` - The last 4 digits of the card number. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:brand, :last4]

  @schema_name "KrCardPaymentMetadata"
  def schema_name, do: @schema_name
end
