# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductMediaFileRead do
  @moduledoc """
  ProductMediaFileRead

  File to be used as a product media file.
  """

  @typedoc """
  * `checksum_etag` - Nullable.
  * `checksum_sha256_base64` - Nullable.
  * `checksum_sha256_hex` - Nullable.
  * `created_at` - Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `is_uploaded`
  * `last_modified_at` - Nullable.
  * `mime_type`
  * `name`
  * `organization_id` - Format: uuid4.
  * `path`
  * `public_url`
  * `service`
  * `size`
  * `size_readable`
  * `storage_version` - Nullable.
  * `version` - Nullable.
  """
  @type t :: %__MODULE__{
          checksum_etag: String.t() | nil,
          checksum_sha256_base64: String.t() | nil,
          checksum_sha256_hex: String.t() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_uploaded: boolean() | nil,
          last_modified_at: DateTime.t() | nil,
          mime_type: String.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          path: String.t() | nil,
          public_url: String.t() | nil,
          service: String.t() | nil,
          size: integer() | nil,
          size_readable: String.t() | nil,
          storage_version: String.t() | nil,
          version: String.t() | nil
        }

  defstruct [
    :checksum_etag,
    :checksum_sha256_base64,
    :checksum_sha256_hex,
    :created_at,
    :id,
    :is_uploaded,
    :last_modified_at,
    :mime_type,
    :name,
    :organization_id,
    :path,
    :public_url,
    :service,
    :size,
    :size_readable,
    :storage_version,
    :version
  ]

  @schema_name "ProductMediaFileRead"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :last_modified_at]
end
