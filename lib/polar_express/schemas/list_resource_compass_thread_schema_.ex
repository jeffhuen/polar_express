# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CompassThreadSchema_ do
  @moduledoc """
  ListResource[CompassThreadSchema]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_CompassThreadSchema_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CompassThreadSchema,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
