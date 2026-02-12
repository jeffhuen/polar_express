# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerPaymentMethod_ do
  @moduledoc """
  ListResource[CustomerPaymentMethod]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomerPaymentMethod.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerPaymentMethod_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerPaymentMethod,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
