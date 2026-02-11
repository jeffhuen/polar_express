# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDiscordSubscriberProperties do
  @moduledoc """
  BenefitDiscordSubscriberProperties

  Properties available to subscribers for a benefit of type `discord`.
  """

  @typedoc """
  * `guild_id` - The ID of the Discord server.
  """
  @type t :: %__MODULE__{
          guild_id: String.t() | nil
        }

  defstruct [:guild_id]

  @schema_name "BenefitDiscordSubscriberProperties"
  def schema_name, do: @schema_name
end
