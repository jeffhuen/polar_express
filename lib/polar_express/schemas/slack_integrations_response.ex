# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackIntegrationsResponse do
  @moduledoc """
  SlackIntegrationsResponse
  """

  @typedoc """
  * `integrations` - Slack apps configured for the organization.
  """
  @type t :: %__MODULE__{}

  defstruct [:integrations]

  @schema_name "SlackIntegrationsResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "integrations" => PolarExpress.Schemas.SlackIntegrationListItem
    }
  end
end
