# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackIntegrationManifest do
  @moduledoc """
  SlackIntegrationManifest
  """

  @typedoc """
  * `manifest` - YAML manifest to paste into Slack.
  """
  @type t :: %__MODULE__{}

  defstruct [:manifest]

  @schema_name "SlackIntegrationManifest"
  def schema_name, do: @schema_name
end
