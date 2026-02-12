# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerCustomerMeter_ do
  @moduledoc """
  ListResource[CustomerCustomerMeter]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomerCustomerMeter.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerCustomerMeter_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerCustomerMeter,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
