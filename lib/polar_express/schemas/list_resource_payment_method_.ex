# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_PaymentMethod_ do
  @moduledoc """
  ListResource[PaymentMethod]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.PaymentMethod.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_PaymentMethod_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.PaymentMethod,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
