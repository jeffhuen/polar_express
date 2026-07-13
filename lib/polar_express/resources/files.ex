# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Files do
  @moduledoc """
  Files

  Files API operations.
  """

  @typedoc """
  * `checksum_etag`
  * `checksum_sha256_base64`
  * `checksum_sha256_hex`
  * `created_at` - Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `is_uploaded`
  * `last_modified_at`
  * `mime_type`
  * `name`
  * `organization_id` - Format: uuid4.
  * `path`
  * `public_url`
  * `service`
  * `size`
  * `size_readable`
  * `storage_version`
  * `version`
  """
  @type t :: %__MODULE__{}

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

  @object_name "files"
  def object_name, do: @object_name
end
