# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerOrder_ do
  @moduledoc """
  ListResource[CustomerOrder]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerOrder_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerOrder,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
