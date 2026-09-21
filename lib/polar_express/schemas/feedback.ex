# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Feedback do
  @moduledoc """
  Feedback
  """

  @typedoc """
  * `client_context`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - Format: uuid4.
  * `message`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - Format: uuid4.
  * `status`
  * `type`
  * `user_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :client_context,
    :created_at,
    :id,
    :message,
    :modified_at,
    :organization_id,
    :status,
    :type,
    :user_id
  ]

  @schema_name "Feedback"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.FeedbackStatus,
      "type" => PolarExpress.Schemas.FeedbackType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
