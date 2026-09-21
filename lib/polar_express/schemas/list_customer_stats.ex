# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListCustomerStats do
  @moduledoc """
  ListCustomerStats

  Customer ranking by an aggregate field.
  """

  @typedoc """
  * `items` - Customers ordered by the primary aggregate field descending.
  """
  @type t :: %__MODULE__{}

  defstruct [:items]

  @schema_name "ListCustomerStats"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerStat
    }
  end
end
