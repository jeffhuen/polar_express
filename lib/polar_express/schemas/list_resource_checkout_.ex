# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Checkout_ do
  @moduledoc """
  ListResource[Checkout]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Checkout.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Checkout_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Checkout,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
