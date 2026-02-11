# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.S3FileUploadMultipart do
  @moduledoc """
  S3FileUploadMultipart
  """

  @typedoc """
  * `id`
  * `parts`
  * `path`
  """
  @type t :: %__MODULE__{
          id: String.t() | nil,
          parts: [PolarExpress.Schemas.S3FileUploadPart.t()] | nil,
          path: String.t() | nil
        }

  defstruct [:id, :parts, :path]

  @schema_name "S3FileUploadMultipart"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "parts" => PolarExpress.Schemas.S3FileUploadPart
    }
  end
end
