# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DownloadableFileCreate do
  @moduledoc """
  DownloadableFileCreate

  Schema to create a file to be associated with the downloadables benefit.
  """

  @typedoc """
  * `checksum_sha256_base64` - Nullable.
  * `mime_type`
  * `name`
  * `organization_id` - Nullable.
  * `service`
  * `size`
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

  @schema_name "DownloadableFileCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "upload" => PolarExpress.Schemas.S3FileCreateMultipart
    }
  end
end
