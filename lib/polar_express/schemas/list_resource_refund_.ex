# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Refund_ do
  @moduledoc """
  ListResource[Refund]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Refund.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Refund_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Refund,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
