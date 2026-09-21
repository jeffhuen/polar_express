# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_OrganizationOrder_ do
  @moduledoc """
  ListResource[OrganizationOrder]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_OrganizationOrder_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.OrganizationOrder,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
