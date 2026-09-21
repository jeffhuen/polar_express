# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseAttachmentFileCreate do
  @moduledoc """
  SupportCaseAttachmentFileCreate

  Schema to create a file attached to a support case.
  """

  @typedoc """
  * `checksum_sha256_base64` - Nullable.
  * `mime_type` - MIME type of the file. Images, videos, PDF, CSV, plain text, Word and Excel documents are supported.
  * `name`
  * `organization_id` - Nullable.
  * `service`
  * `size` - Size of the file. A maximum of 250 MB is allowed for this type of file.
  * `upload`
  * `version` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checksum_sha256_base64,
    :mime_type,
    :name,
    :organization_id,
    :service,
    :size,
    :upload,
    :version
  ]

  @schema_name "SupportCaseAttachmentFileCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "upload" => PolarExpress.Schemas.S3FileCreateMultipart
    }
  end
end
