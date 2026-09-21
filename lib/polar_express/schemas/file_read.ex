# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FileRead do
  @moduledoc "FileRead union type."

  @type t ::
          PolarExpress.Schemas.DownloadableFileRead.t()
          | PolarExpress.Schemas.ProductMediaFileRead.t()
          | PolarExpress.Schemas.OrganizationAvatarFileRead.t()
          | PolarExpress.Schemas.SupportCaseAttachmentFileRead.t()

  @schema_name "FileRead"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.DownloadableFileRead,
      PolarExpress.Schemas.ProductMediaFileRead,
      PolarExpress.Schemas.OrganizationAvatarFileRead,
      PolarExpress.Schemas.SupportCaseAttachmentFileRead
    ]
  end

  def __discriminator__ do
    {"service",
     %{
       "downloadable" => PolarExpress.Schemas.DownloadableFileRead,
       "organization_avatar" => PolarExpress.Schemas.OrganizationAvatarFileRead,
       "product_media" => PolarExpress.Schemas.ProductMediaFileRead,
       "support_case_attachment" => PolarExpress.Schemas.SupportCaseAttachmentFileRead
     }}
  end
end
