# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResourceWithCursorPagination_Event_ do
  @moduledoc """
  ListResourceWithCursorPagination[Event]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Event.t()] | nil,
          pagination: PolarExpress.Schemas.CursorPagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResourceWithCursorPagination_Event_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Event,
      "pagination" => PolarExpress.Schemas.CursorPagination
    }
  end
end
