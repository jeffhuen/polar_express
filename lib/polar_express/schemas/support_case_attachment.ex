# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseAttachment do
  @moduledoc """
  SupportCaseAttachment
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `file`
  * `id` - The ID of the object. Format: uuid4.
  * `message_id` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :file, :id, :message_id, :modified_at]

  @schema_name "SupportCaseAttachment"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "file" => PolarExpress.Schemas.SupportCaseAttachmentFile
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
