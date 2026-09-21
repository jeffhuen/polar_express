# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscordGuildRole do
  @moduledoc """
  DiscordGuildRole
  """

  @typedoc """
  * `color` - Format: color.
  * `id`
  * `is_polar_bot`
  * `name`
  * `position`
  """
  @type t :: %__MODULE__{}

  defstruct [:color, :id, :is_polar_bot, :name, :position]

  @schema_name "DiscordGuildRole"
  def schema_name, do: @schema_name
end
