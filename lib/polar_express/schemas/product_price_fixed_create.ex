# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceFixedCreate do
  @moduledoc """
  ProductPriceFixedCreate

  Schema to create a fixed price.
  """

  @typedoc """
  * `amount_type`
  * `price_amount` - The price in cents.
  * `price_currency` - The currency in which the customer will be charged.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          price_amount: integer() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil
        }

  defstruct [:amount_type, :price_amount, :price_currency]

  @schema_name "ProductPriceFixedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency
    }
  end
end
