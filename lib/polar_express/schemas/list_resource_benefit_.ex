# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Benefit_ do
  @moduledoc """
  ListResource[Benefit]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Benefit.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Benefit_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Benefit,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
