# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantDiscordPropertiesUpdate do
  @moduledoc """
  CustomerBenefitGrantDiscordPropertiesUpdate
  """

  @typedoc """
  * `account_id` - Nullable.
  """
  @type t :: %__MODULE__{
          account_id: String.t() | nil
        }

  defstruct [:account_id]

  @schema_name "CustomerBenefitGrantDiscordPropertiesUpdate"
  def schema_name, do: @schema_name
end
