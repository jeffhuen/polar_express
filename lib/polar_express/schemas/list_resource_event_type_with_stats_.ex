# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_EventTypeWithStats_ do
  @moduledoc """
  ListResource[EventTypeWithStats]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.EventTypeWithStats.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_EventTypeWithStats_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.EventTypeWithStats,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
