# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_LicenseKeyRead_ do
  @moduledoc """
  ListResource[LicenseKeyRead]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.LicenseKeyRead.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_LicenseKeyRead_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.LicenseKeyRead,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
