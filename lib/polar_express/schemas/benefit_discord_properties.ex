# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDiscordProperties do
  @moduledoc """
  BenefitDiscordProperties

  Properties for a benefit of type `discord`.
  """

  @typedoc """
  * `guild_id` - The ID of the Discord server.
  * `guild_token`
  * `kick_member` - Whether to kick the member from the Discord server on revocation.
  * `role_id` - The ID of the Discord role to grant.
  """
  @type t :: %__MODULE__{
          guild_id: String.t() | nil,
          guild_token: String.t() | nil,
          kick_member: boolean() | nil,
          role_id: String.t() | nil
        }

  defstruct [:guild_id, :guild_token, :kick_member, :role_id]

  @schema_name "BenefitDiscordProperties"
  def schema_name, do: @schema_name
end
