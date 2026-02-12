# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.S3FileCreatePart do
  @moduledoc """
  S3FileCreatePart
  """

  @typedoc """
  * `checksum_sha256_base64` - Nullable.
  * `chunk_end`
  * `chunk_start`
  * `number`
  """
  @type t :: %__MODULE__{
          checksum_sha256_base64: String.t() | nil,
          chunk_end: integer() | nil,
          chunk_start: integer() | nil,
          number: integer() | nil
        }

  defstruct [:checksum_sha256_base64, :chunk_end, :chunk_start, :number]

  @schema_name "S3FileCreatePart"
  def schema_name, do: @schema_name
end
