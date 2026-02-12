# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_OrganizationAccessToken_ do
  @moduledoc """
  ListResource[OrganizationAccessToken]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.OrganizationAccessToken.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_OrganizationAccessToken_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.OrganizationAccessToken,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
