# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscordGuild do
  @moduledoc """
  DiscordGuild
  """

  @typedoc """
  * `name`
  * `roles`
  """
  @type t :: %__MODULE__{}

  defstruct [:name, :roles]

  @schema_name "DiscordGuild"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "roles" => PolarExpress.Schemas.DiscordGuildRole
    }
  end
end
