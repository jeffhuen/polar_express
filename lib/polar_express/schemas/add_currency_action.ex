# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AddCurrencyAction do
  @moduledoc """
  AddCurrencyAction

  A nudge to offer prices in an additional presentment currency.

  The client routes to the products list, where per-product pricing can be
  extended. Nothing is ever applied automatically.
  """

  @typedoc """
  * `currency` - Lowercase ISO code of the suggested currency, e.g. `eur`.
  * `label` - Button label.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:currency, :label, :type]

  @schema_name "AddCurrencyAction"
  def schema_name, do: @schema_name
end
