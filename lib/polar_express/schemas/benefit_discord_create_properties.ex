# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDiscordCreateProperties do
  @moduledoc """
  BenefitDiscordCreateProperties

  Properties to create a benefit of type `discord`.
  """

  @typedoc """
  * `guild_token`
  * `kick_member` - Whether to kick the member from the Discord server on revocation.
  * `role_id` - The ID of the Discord role to grant.
  """
  @type t :: %__MODULE__{
          guild_token: String.t() | nil,
          kick_member: boolean() | nil,
          role_id: String.t() | nil
        }

  defstruct [:guild_token, :kick_member, :role_id]

  @schema_name "BenefitDiscordCreateProperties"
  def schema_name, do: @schema_name
end
