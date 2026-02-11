# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DownloadableRead do
  @moduledoc """
  DownloadableRead
  """

  @typedoc """
  * `benefit_id` - Format: uuid4.
  * `file`
  * `id` - Format: uuid4.
  """
  @type t :: %__MODULE__{
          benefit_id: String.t() | nil,
          file: PolarExpress.Schemas.FileDownload.t() | nil,
          id: String.t() | nil
        }

  defstruct [:benefit_id, :file, :id]

  @schema_name "DownloadableRead"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "file" => PolarExpress.Schemas.FileDownload
    }
  end
end
