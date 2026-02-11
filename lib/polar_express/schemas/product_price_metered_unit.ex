# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceMeteredUnit do
  @moduledoc """
  ProductPriceMeteredUnit

  A metered, usage-based, price for a product, with a fixed unit price.
  """

  @typedoc """
  * `amount_type`
  * `cap_amount` - The maximum amount in cents that can be charged, regardless of the number of units consumed. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the price. Format: uuid4.
  * `is_archived` - Whether the price is archived and no longer available.
  * `meter` - The meter associated to the price.
  * `meter_id` - The ID of the meter associated to the price. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `product_id` - The ID of the product owning the price. Format: uuid4.
  * `recurring_interval` - Nullable. **Deprecated.**
  * `source` - The source of the price . `catalog` is a predefined price, while `ad_hoc` is a price created dynamically on a Checkout session.
  * `type` - **Deprecated.**
  * `unit_amount` - The price per unit in cents.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          cap_amount: integer() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          meter: PolarExpress.Schemas.ProductPriceMeter.t() | nil,
          meter_id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil,
          product_id: String.t() | nil,
          recurring_interval: PolarExpress.Schemas.SubscriptionRecurringInterval.t() | nil,
          source: PolarExpress.Schemas.ProductPriceSource.t() | nil,
          type: PolarExpress.Schemas.ProductPriceType.t() | nil,
          unit_amount: String.t() | nil
        }

  defstruct [
    :amount_type,
    :cap_amount,
    :created_at,
    :id,
    :is_archived,
    :meter,
    :meter_id,
    :modified_at,
    :price_currency,
    :product_id,
    :recurring_interval,
    :source,
    :type,
    :unit_amount
  ]

  @schema_name "ProductPriceMeteredUnit"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "meter" => PolarExpress.Schemas.ProductPriceMeter,
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "recurring_interval" => PolarExpress.Schemas.SubscriptionRecurringInterval,
      "source" => PolarExpress.Schemas.ProductPriceSource,
      "type" => PolarExpress.Schemas.ProductPriceType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
