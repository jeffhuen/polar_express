# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotificationRecipientSchema do
  @moduledoc """
  NotificationRecipientSchema
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `expo_push_token` - Expo push token for the notification recipient.
  * `id` - Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `platform` - Platform of the notification recipient.
  * `user_id` - ID of the user the notification recipient belongs to. Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :expo_push_token, :id, :modified_at, :platform, :user_id]

  @schema_name "NotificationRecipientSchema"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "platform" => PolarExpress.Schemas.NotificationRecipientPlatform
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
