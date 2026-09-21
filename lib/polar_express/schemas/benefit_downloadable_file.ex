# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDownloadableFile do
  @moduledoc """
  BenefitDownloadableFile
  """

  @typedoc """
  * `checksum_etag` - Nullable.
  * `checksum_sha256_base64` - Nullable.
  * `checksum_sha256_hex` - Nullable.
  * `created_at` - Format: date-time.
  * `downloaders` - Number of distinct customers or members who downloaded the file.
  * `downloads` - Total number of downloads for the file.
  * `flagged_malicious_at` - Nullable.
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
  * `version` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :checksum_etag,
    :checksum_sha256_base64,
    :checksum_sha256_hex,
    :created_at,
    :downloaders,
    :downloads,
    :flagged_malicious_at,
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
    :version
  ]

  @schema_name "BenefitDownloadableFile"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :flagged_malicious_at, :last_modified_at]
end
