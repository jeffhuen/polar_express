# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FileUpload do
  @moduledoc """
  FileUpload
  """

  @typedoc """
  * `checksum_etag` - Nullable.
  * `checksum_sha256_base64` - Nullable.
  * `checksum_sha256_hex` - Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `is_uploaded`
  * `last_modified_at` - Nullable.
  * `mime_type`
  * `name`
  * `organization_id` - Format: uuid4.
  * `path`
  * `service`
  * `size`
  * `size_readable`
  * `storage_version` - Nullable.
  * `upload`
  * `version` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checksum_etag,
    :checksum_sha256_base64,
    :checksum_sha256_hex,
    :id,
    :is_uploaded,
    :last_modified_at,
    :mime_type,
    :name,
    :organization_id,
    :path,
    :service,
    :size,
    :size_readable,
    :storage_version,
    :upload,
    :version
  ]

  @schema_name "FileUpload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "service" => PolarExpress.Schemas.FileServiceTypes,
      "upload" => PolarExpress.Schemas.S3FileUploadMultipart
    }
  end

  def __date_fields__, do: [:last_modified_at]
end
