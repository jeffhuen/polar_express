# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodKrCardMetadata do
  @moduledoc """
  PaymentMethodKrCardMetadata
  """

  @typedoc """
  * `brand` - Nullable.
  * `last4` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:brand, :last4]

  @schema_name "PaymentMethodKrCardMetadata"
  def schema_name, do: @schema_name
end
