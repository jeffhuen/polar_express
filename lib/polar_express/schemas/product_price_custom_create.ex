# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceCustomCreate do
  @moduledoc """
  ProductPriceCustomCreate

  Schema to create a pay-what-you-want price.
  """

  @typedoc """
  * `amount_type`
  * `maximum_amount` - The maximum amount the customer can pay. Nullable.
  * `minimum_amount` - The minimum amount the customer can pay. If set to 0, the price is 'free or pay what you want' and $0 is accepted. If set to a value between 1-49, it will be rejected. Defaults to 50 cents.
  * `preset_amount` - The initial amount shown to the customer. If 0, the customer will see $0 as the default. Values between 1-49 are rejected. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          maximum_amount: integer() | nil,
          minimum_amount: integer() | nil,
          preset_amount: integer() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil
        }

  defstruct [:amount_type, :maximum_amount, :minimum_amount, :preset_amount, :price_currency]

  @schema_name "ProductPriceCustomCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency
    }
  end
end
