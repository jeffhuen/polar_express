# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Order_ do
  @moduledoc """
  ListResource[Order]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Order.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Order_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Order,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
