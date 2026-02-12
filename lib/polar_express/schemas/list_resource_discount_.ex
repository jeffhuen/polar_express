# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Discount_ do
  @moduledoc """
  ListResource[Discount]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Discount.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Discount_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Discount,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
