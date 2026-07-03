# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceFreeCreate do
  @moduledoc """
  ProductPriceFreeCreate

  Schema to create a free price.
  """

  @typedoc """
  * `amount_type`
  * `price_currency` - The currency in which the customer will be charged.
  * `tax_behavior` - The tax behavior of the price. If not set, it will default to the organization's default tax behavior. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount_type, :price_currency, :tax_behavior]

  @schema_name "ProductPriceFreeCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption
    }
  end
end
