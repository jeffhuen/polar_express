# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.S3FileUploadCompletedPart do
  @moduledoc """
  S3FileUploadCompletedPart
  """

  @typedoc """
  * `checksum_etag`
  * `checksum_sha256_base64` - Nullable.
  * `number`
  """
  @type t :: %__MODULE__{
          checksum_etag: String.t() | nil,
          checksum_sha256_base64: String.t() | nil,
          number: integer() | nil
        }

  defstruct [:checksum_etag, :checksum_sha256_base64, :number]

  @schema_name "S3FileUploadCompletedPart"
  def schema_name, do: @schema_name
end
