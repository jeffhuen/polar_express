# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserOrganizationNotificationSettings do
  @moduledoc """
  UserOrganizationNotificationSettings
  """

  @typedoc """
  * `notification_settings` - The authenticated user's notification preferences for this organization.
  """
  @type t :: %__MODULE__{}

  defstruct [:notification_settings]

  @schema_name "UserOrganizationNotificationSettings"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "notification_settings" => PolarExpress.Schemas.OrganizationNotificationSettings
    }
  end
end
