# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceFreeCreate do
  @moduledoc """
  ProductPriceFreeCreate

  Schema to create a free price.
  """

  @typedoc """
  * `amount_type`
  * `price_currency` - The currency in which the customer will be charged.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil
        }

  defstruct [:amount_type, :price_currency]

  @schema_name "ProductPriceFreeCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency
    }
  end
end
