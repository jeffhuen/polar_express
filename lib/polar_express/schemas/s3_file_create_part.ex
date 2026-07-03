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
  @type t :: %__MODULE__{}

  defstruct [:checksum_sha256_base64, :chunk_end, :chunk_start, :number]

  @schema_name "S3FileCreatePart"
  def schema_name, do: @schema_name
end
