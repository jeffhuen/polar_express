# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Product_ do
  @moduledoc """
  ListResource[Product]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_Product_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Product,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
