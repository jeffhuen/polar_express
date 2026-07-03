# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerMeter_ do
  @moduledoc """
  ListResource[CustomerMeter]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerMeter_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerMeter,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
