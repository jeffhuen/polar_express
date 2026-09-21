# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackIntegrationManifestRequest do
  @moduledoc """
  SlackIntegrationManifestRequest
  """

  @typedoc """
  * `display_name` - Name shown in your Slack workspace for the app and bot user. Defaults to your organization name; customize before pasting into Slack. Max length: 35.
  """
  @type t :: %__MODULE__{}

  defstruct [:display_name]

  @schema_name "SlackIntegrationManifestRequest"
  def schema_name, do: @schema_name
end
