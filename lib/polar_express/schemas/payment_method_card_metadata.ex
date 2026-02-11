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
  @type t :: %__MODULE__{
          brand: String.t() | nil,
          exp_month: integer() | nil,
          exp_year: integer() | nil,
          last4: String.t() | nil,
          wallet: String.t() | nil
        }

  defstruct [:brand, :exp_month, :exp_year, :last4, :wallet]

  @schema_name "PaymentMethodCardMetadata"
  def schema_name, do: @schema_name
end
