# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackWorkspaceUsersResponse do
  @moduledoc """
  SlackWorkspaceUsersResponse
  """

  @typedoc """
  * `users` - Active, non-bot users in the connected Slack workspace.
  """
  @type t :: %__MODULE__{}

  defstruct [:users]

  @schema_name "SlackWorkspaceUsersResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "users" => PolarExpress.Schemas.SlackWorkspaceUser
    }
  end
end
