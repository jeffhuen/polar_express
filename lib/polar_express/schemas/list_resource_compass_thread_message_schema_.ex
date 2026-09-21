# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CompassThreadMessageSchema_ do
  @moduledoc """
  ListResource[CompassThreadMessageSchema]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_CompassThreadMessageSchema_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CompassThreadMessageSchema,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
