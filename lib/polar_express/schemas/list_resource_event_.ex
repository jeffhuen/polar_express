# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Event_ do
  @moduledoc """
  ListResource[Event]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Event.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Event_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Event,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
