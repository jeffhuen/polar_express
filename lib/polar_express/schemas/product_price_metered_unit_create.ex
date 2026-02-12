# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceMeteredUnitCreate do
  @moduledoc """
  ProductPriceMeteredUnitCreate

  Schema to create a metered price with a fixed unit price.
  """

  @typedoc """
  * `amount_type`
  * `cap_amount` - Optional maximum amount in cents that can be charged, regardless of the number of units consumed. Nullable.
  * `meter_id` - The ID of the meter associated to the price. Format: uuid4.
  * `price_currency` - The currency in which the customer will be charged.
  * `unit_amount` - The price per unit in cents. Supports up to 12 decimal places.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          cap_amount: integer() | nil,
          meter_id: String.t() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil,
          unit_amount: float() | String.t() | nil
        }

  defstruct [:amount_type, :cap_amount, :meter_id, :price_currency, :unit_amount]

  @schema_name "ProductPriceMeteredUnitCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency
    }
  end
end
