# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Organization_ do
  @moduledoc """
  ListResource[Organization]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Organization.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Organization_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Organization,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
