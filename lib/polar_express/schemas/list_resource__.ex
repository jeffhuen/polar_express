# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource__ do
  @moduledoc """
  ListResource[]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Payment.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource__"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Payment,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
