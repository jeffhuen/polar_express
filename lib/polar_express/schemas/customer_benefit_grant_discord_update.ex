# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantDiscordUpdate do
  @moduledoc """
  CustomerBenefitGrantDiscordUpdate
  """

  @typedoc """
  * `benefit_type`
  * `properties`
  """
  @type t :: %__MODULE__{
          benefit_type: String.t() | nil,
          properties: PolarExpress.Schemas.CustomerBenefitGrantDiscordPropertiesUpdate.t() | nil
        }

  defstruct [:benefit_type, :properties]

  @schema_name "CustomerBenefitGrantDiscordUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.CustomerBenefitGrantDiscordPropertiesUpdate
    }
  end
end
