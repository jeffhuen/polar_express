# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerMeter_ do
  @moduledoc """
  ListResource[CustomerMeter]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomerMeter.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerMeter_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerMeter,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
