# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerStat do
  @moduledoc """
  CustomerStat

  Aggregated statistics for a single customer across all their root events.
  """

  @typedoc """
  * `customer_id` - Polar customer ID. Nullable.
  * `email` - Customer email. Nullable.
  * `external_customer_id` - External customer ID. Nullable.
  * `name` - Customer name. Nullable.
  * `occurrences` - Number of root events for this customer.
  * `share` - This customer's share of the total cost across all customers (0–1).
  * `totals` - Aggregated totals per requested field.
  """
  @type t :: %__MODULE__{}

  defstruct [:customer_id, :email, :external_customer_id, :name, :occurrences, :share, :totals]

  @schema_name "CustomerStat"
  def schema_name, do: @schema_name
end
