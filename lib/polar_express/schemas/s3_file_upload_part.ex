# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.S3FileUploadPart do
  @moduledoc """
  S3FileUploadPart
  """

  @typedoc """
  * `checksum_sha256_base64` - Nullable.
  * `chunk_end`
  * `chunk_start`
  * `expires_at` - Format: date-time.
  * `headers`
  * `number`
  * `url`
  """
  @type t :: %__MODULE__{
          checksum_sha256_base64: String.t() | nil,
          chunk_end: integer() | nil,
          chunk_start: integer() | nil,
          expires_at: DateTime.t() | nil,
          headers: map() | nil,
          number: integer() | nil,
          url: String.t() | nil
        }

  defstruct [
    :checksum_sha256_base64,
    :chunk_end,
    :chunk_start,
    :expires_at,
    :headers,
    :number,
    :url
  ]

  @schema_name "S3FileUploadPart"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:expires_at]
end
