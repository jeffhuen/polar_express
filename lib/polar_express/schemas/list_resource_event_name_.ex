# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_EventName_ do
  @moduledoc """
  ListResource[EventName]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.EventName.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_EventName_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.EventName,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
