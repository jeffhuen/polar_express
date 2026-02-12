# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Meter_ do
  @moduledoc """
  ListResource[Meter]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Meter.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Meter_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Meter,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
