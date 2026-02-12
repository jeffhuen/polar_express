# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomField_ do
  @moduledoc """
  ListResource[CustomField]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomField.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomField_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomField,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
