# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CardPaymentMetadata do
  @moduledoc """
  CardPaymentMetadata

  Additional metadata for a card payment method.
  """

  @typedoc """
  * `brand` - The brand of the card used for the payment.
  * `last4` - The last 4 digits of the card number.
  """
  @type t :: %__MODULE__{
          brand: String.t() | nil,
          last4: String.t() | nil
        }

  defstruct [:brand, :last4]

  @schema_name "CardPaymentMetadata"
  def schema_name, do: @schema_name
end
