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
  @type t :: %__MODULE__{}

  defstruct [:account_id, :granted_account_id, :guild_id, :role_id]

  @schema_name "BenefitGrantDiscordProperties"
  def schema_name, do: @schema_name
end
