# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_FileRead_ do
  @moduledoc """
  ListResource[FileRead]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_FileRead_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.FileRead,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
