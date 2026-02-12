# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CheckoutLink_ do
  @moduledoc """
  ListResource[CheckoutLink]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CheckoutLink.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CheckoutLink_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CheckoutLink,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
