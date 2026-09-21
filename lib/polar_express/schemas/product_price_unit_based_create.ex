# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceUnitBasedCreate do
  @moduledoc """
  ProductPriceUnitBasedCreate

  Schema to create a unit-based price: the buyer picks a quantity of units,
  pays for it up-front. On subscriptions, quantity changes are prorated.
  """

  @typedoc """
  * `amount_type`
  * `minimum_units` - The minimum purchasable quantity (inclusive). Defaults to 1 when not set. Nullable.
  * `price_currency` - The currency in which the customer will be charged.
  * `tax_behavior` - The tax behavior of the price. If not set, it will default to the organization's default tax behavior. Nullable.
  * `tiers` - Tiered pricing based on the purchased unit quantity.
  * `unit_label` - Per-locale unit nouns shown at checkout and on invoices. `{"en": {"=1": "device", "other": "devices"}}`. Defaults to "unit"/"units" when unset. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount_type, :minimum_units, :price_currency, :tax_behavior, :tiers, :unit_label]

  @schema_name "ProductPriceUnitBasedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption,
      "tiers" => PolarExpress.Schemas.TiersInput
    }
  end
end
