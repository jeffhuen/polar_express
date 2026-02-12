# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductMediaFileCreate do
  @moduledoc """
  ProductMediaFileCreate

  Schema to create a file to be used as a product media file.
  """

  @typedoc """
  * `checksum_sha256_base64` - Nullable.
  * `mime_type` - MIME type of the file. Only images are supported for this type of file.
  * `name`
  * `organization_id` - Nullable.
  * `service`
  * `size` - Size of the file. A maximum of 10 MB is allowed for this type of file.
  * `upload`
  * `version` - Nullable.
  """
  @type t :: %__MODULE__{
          checksum_sha256_base64: String.t() | nil,
          mime_type: String.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          service: String.t() | nil,
          size: integer() | nil,
          upload: PolarExpress.Schemas.S3FileCreateMultipart.t() | nil,
          version: String.t() | nil
        }

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

  @schema_name "ProductMediaFileCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "upload" => PolarExpress.Schemas.S3FileCreateMultipart
    }
  end
end
