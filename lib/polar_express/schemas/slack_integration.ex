# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackIntegration do
  @moduledoc """
  SlackIntegration
  """

  @typedoc """
  * `authed_user_id` - Slack user ID that authorized the app, if installed. Nullable.
  * `bot_user_id` - Installed bot user ID, if any. Nullable.
  * `client_id` - Slack client ID.
  * `client_id_last_4` - Last four characters of the Client ID (display only).
  * `client_secret_last_4` - Last four characters of the client secret (display only).
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `display_name` - Display name used by the Slack app.
  * `id` - ID of the Slack integration. Format: uuid4.
  * `installed_at` - Timestamp when the Slack app was installed. Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - Organization that owns the Slack integration. Format: uuid4.
  * `revoked_at` - Timestamp when the Slack app was revoked or uninstalled. Nullable.
  * `scopes` - Granted Slack bot scopes, if any. Nullable.
  * `signing_secret_last_4` - Last four characters of the signing secret (display only).
  * `slack_app_id` - Slack app ID.
  * `team_id` - Slack workspace ID, if installed. Nullable.
  * `team_name` - Slack workspace name, if installed. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :authed_user_id,
    :bot_user_id,
    :client_id,
    :client_id_last_4,
    :client_secret_last_4,
    :created_at,
    :display_name,
    :id,
    :installed_at,
    :modified_at,
    :organization_id,
    :revoked_at,
    :scopes,
    :signing_secret_last_4,
    :slack_app_id,
    :team_id,
    :team_name
  ]

  @schema_name "SlackIntegration"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :installed_at, :modified_at, :revoked_at]
end
