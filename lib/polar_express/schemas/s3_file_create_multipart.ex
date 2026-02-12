# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.S3FileCreateMultipart do
  @moduledoc """
  S3FileCreateMultipart
  """

  @typedoc """
  * `parts`
  """
  @type t :: %__MODULE__{
          parts: [PolarExpress.Schemas.S3FileCreatePart.t()] | nil
        }

  defstruct [:parts]

  @schema_name "S3FileCreateMultipart"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "parts" => PolarExpress.Schemas.S3FileCreatePart
    }
  end
end
