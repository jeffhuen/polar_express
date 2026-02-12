# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FileCreate do
  @moduledoc "FileCreate union type."

  @type t ::
          PolarExpress.Schemas.DownloadableFileCreate.t()
          | PolarExpress.Schemas.ProductMediaFileCreate.t()
          | PolarExpress.Schemas.OrganizationAvatarFileCreate.t()

  @schema_name "FileCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.DownloadableFileCreate,
      PolarExpress.Schemas.ProductMediaFileCreate,
      PolarExpress.Schemas.OrganizationAvatarFileCreate
    ]
  end

  def __discriminator__ do
    {"service",
     %{
       "downloadable" => PolarExpress.Schemas.DownloadableFileCreate,
       "organization_avatar" => PolarExpress.Schemas.OrganizationAvatarFileCreate,
       "product_media" => PolarExpress.Schemas.ProductMediaFileCreate
     }}
  end
end
