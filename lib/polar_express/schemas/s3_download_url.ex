# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.S3DownloadURL do
  @moduledoc """
  S3DownloadURL
  """

  @typedoc """
  * `expires_at` - Format: date-time.
  * `headers`
  * `url`
  """
  @type t :: %__MODULE__{
          expires_at: DateTime.t() | nil,
          headers: map() | nil,
          url: String.t() | nil
        }

  defstruct [:expires_at, :headers, :url]

  @schema_name "S3DownloadURL"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:expires_at]
end
