# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FileUploadCompleted do
  @moduledoc """
  FileUploadCompleted
  """

  @typedoc """
  * `id`
  * `parts`
  * `path`
  """
  @type t :: %__MODULE__{
          id: String.t() | nil,
          parts: [PolarExpress.Schemas.S3FileUploadCompletedPart.t()] | nil,
          path: String.t() | nil
        }

  defstruct [:id, :parts, :path]

  @schema_name "FileUploadCompleted"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "parts" => PolarExpress.Schemas.S3FileUploadCompletedPart
    }
  end
end
