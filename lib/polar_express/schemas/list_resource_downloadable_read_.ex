# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_DownloadableRead_ do
  @moduledoc """
  ListResource[DownloadableRead]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.DownloadableRead.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_DownloadableRead_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.DownloadableRead,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
