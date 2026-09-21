# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerGrowthPeriod do
  @moduledoc """
  CustomerGrowthPeriod
  """

  @typedoc """
  * `new_customers` - The number of customers created during the period.
  * `timestamp` - The start of the period. Format: date-time.
  * `total_customers` - The cumulative number of customers at the end of the period.
  """
  @type t :: %__MODULE__{}

  defstruct [:new_customers, :timestamp, :total_customers]

  @schema_name "CustomerGrowthPeriod"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:timestamp]
end
