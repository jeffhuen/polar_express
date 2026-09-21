# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SlackWorkspaceUser do
  @moduledoc """
  SlackWorkspaceUser
  """

  @typedoc """
  * `id` - Slack user ID (e.g. U01234567).
  * `image_url` - Avatar URL (image_72), if available. Nullable.
  * `is_admin` - Whether the user is a workspace admin.
  * `name` - Username (handle without @).
  * `real_name` - Display name, if set. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:id, :image_url, :is_admin, :name, :real_name]

  @schema_name "SlackWorkspaceUser"
  def schema_name, do: @schema_name
end
