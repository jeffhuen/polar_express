# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TaxSummary do
  @moduledoc """
  TaxSummary

  Aggregated tax remitted by Polar across all jurisdictions.

  Totals span the full filtered dataset, independent of the pagination
  applied to the jurisdiction breakdown.
  """

  @typedoc """
  * `currency` - Currency of the remitted tax amount.
  * `jurisdiction_count` - Number of distinct jurisdictions tax was remitted in.
  * `order_count` - Number of orders that contributed tax across all jurisdictions.
  * `tax_amount` - Net tax remitted by Polar across all jurisdictions, in the currency's minor unit. Refunds and disputes are netted out.
  """
  @type t :: %__MODULE__{}

  defstruct [:currency, :jurisdiction_count, :order_count, :tax_amount]

  @schema_name "TaxSummary"
  def schema_name, do: @schema_name
end
