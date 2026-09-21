# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_SupportCaseListItem_ do
  @moduledoc """
  ListResource[SupportCaseListItem]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_SupportCaseListItem_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.SupportCaseListItem,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
