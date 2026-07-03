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
  * `id` - The ID of the object. Format: uuid4.
  * `is_uploaded`
  * `last_modified_at`
  * `mime_type`
  * `name`
  * `organization_id` - Format: uuid4.
  * `path`
  * `service`
  * `size`
  * `size_readable`
  * `storage_version`
  * `upload`
  * `version`
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

  @object_name "files"
  def object_name, do: @object_name
end
