# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserOrganizationNotificationSettingsUpdate do
  @moduledoc """
  UserOrganizationNotificationSettingsUpdate
  """

  @typedoc """
  * `notification_settings` - The notification settings to store for the current user on this organization.
  """
  @type t :: %__MODULE__{}

  defstruct [:notification_settings]

  @schema_name "UserOrganizationNotificationSettingsUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "notification_settings" => PolarExpress.Schemas.OrganizationNotificationSettings
    }
  end
end
