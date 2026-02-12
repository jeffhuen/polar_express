# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Member_ do
  @moduledoc """
  ListResource[Member]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Member.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Member_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Member,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
