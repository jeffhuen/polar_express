# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TaxJurisdiction do
  @moduledoc """
  TaxJurisdiction

  Aggregated tax remitted by Polar for a single jurisdiction.

  US and Canadian jurisdictions are reported at the state/province level;
  every other country is aggregated at the country level.
  """

  @typedoc """
  * `country` - ISO 3166-1 alpha-2 country code.
  * `country_name` - Human-readable country name.
  * `currency` - Currency of the remitted tax amount.
  * `id` - Stable identifier for the jurisdiction. For US/Canada it is `{country}-{state}` (e.g. `US-CA`), otherwise the country code (e.g. `GB`).
  * `order_count` - Number of orders that contributed tax to this jurisdiction.
  * `state` - ISO 3166-2 subdivision code, without the country prefix (e.g. `CA`). Only set for US and Canadian jurisdictions. Nullable.
  * `state_name` - Human-readable state/province name. Only set for US and Canadian jurisdictions. Nullable.
  * `tax_amount` - Net tax remitted by Polar in this jurisdiction, in the currency's minor unit. Refunds and disputes are netted out.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :country,
    :country_name,
    :currency,
    :id,
    :order_count,
    :state,
    :state_name,
    :tax_amount
  ]

  @schema_name "TaxJurisdiction"
  def schema_name, do: @schema_name
end
