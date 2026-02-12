# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerWithMembers_ do
  @moduledoc """
  ListResource[CustomerWithMembers]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomerWithMembers.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerWithMembers_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerWithMembers,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
