# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotificationRecipientCreate do
  @moduledoc """
  NotificationRecipientCreate
  """

  @typedoc """
  * `expo_push_token` - Expo push token for the notification recipient.
  * `platform` - Platform of the notification recipient.
  """
  @type t :: %__MODULE__{}

  defstruct [:expo_push_token, :platform]

  @schema_name "NotificationRecipientCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "platform" => PolarExpress.Schemas.NotificationRecipientPlatform
    }
  end
end
