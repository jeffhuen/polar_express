# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackIntegrationCredentialsUpdate do
  @moduledoc """
  SlackIntegrationCredentialsUpdate
  """

  @typedoc """
  * `client_id` - Client ID from your Slack app's Basic Information page. Max length: 128.
  * `client_secret` - Client Secret from your Slack app's Basic Information page. Omit to keep the existing value when updating other fields. Nullable.
  * `display_name` - Display name used by the bot user in your Slack workspace. Reflected in the manifest. Max length: 35.
  * `organization_id` - Organization the integration belongs to. Format: uuid4.
  * `signing_secret` - Signing Secret from your Slack app's Basic Information page. Omit to keep the existing value when updating other fields. Nullable.
  * `slack_app_id` - App ID from your Slack app's Basic Information page. Max length: 32.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :client_id,
    :client_secret,
    :display_name,
    :organization_id,
    :signing_secret,
    :slack_app_id
  ]

  @schema_name "SlackIntegrationCredentialsUpdate"
  def schema_name, do: @schema_name
end
