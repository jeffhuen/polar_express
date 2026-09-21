# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseMessage do
  @moduledoc """
  SupportCaseMessage
  """

  @typedoc """
  * `author_kind`
  * `body` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:author_kind, :body, :created_at, :id, :modified_at, :type]

  @schema_name "SupportCaseMessage"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "author_kind" => PolarExpress.Schemas.SupportCaseMessageAuthorKind,
      "type" => PolarExpress.Schemas.SupportCaseMessageType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
