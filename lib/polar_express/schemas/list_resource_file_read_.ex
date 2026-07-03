# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_FileRead_ do
  @moduledoc """
  ListResource[FileRead]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_FileRead_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" =>
        {:union, :discriminated, "service",
         %{
           "downloadable" => PolarExpress.Schemas.DownloadableFileRead,
           "organization_avatar" => PolarExpress.Schemas.OrganizationAvatarFileRead,
           "product_media" => PolarExpress.Schemas.ProductMediaFileRead
         }},
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
