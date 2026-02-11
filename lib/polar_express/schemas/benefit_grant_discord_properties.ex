# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantDiscordProperties do
  @moduledoc """
  BenefitGrantDiscordProperties
  """

  @typedoc """
  * `account_id` - Nullable.
  * `granted_account_id`
  * `guild_id`
  * `role_id`
  """
  @type t :: %__MODULE__{
          account_id: String.t() | nil,
          granted_account_id: String.t() | nil,
          guild_id: String.t() | nil,
          role_id: String.t() | nil
        }

  defstruct [:account_id, :granted_account_id, :guild_id, :role_id]

  @schema_name "BenefitGrantDiscordProperties"
  def schema_name, do: @schema_name
end
