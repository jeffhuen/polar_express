# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_OrganizationMember_ do
  @moduledoc """
  ListResource[OrganizationMember]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_OrganizationMember_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.OrganizationMember,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
