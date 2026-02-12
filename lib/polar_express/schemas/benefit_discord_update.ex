# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDiscordUpdate do
  @moduledoc """
  BenefitDiscordUpdate
  """

  @typedoc """
  * `description` - The description of the benefit. Will be displayed on products having this benefit. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `properties` - Nullable.
  * `type`
  """
  @type t :: %__MODULE__{
          description: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          properties: PolarExpress.Schemas.BenefitDiscordCreateProperties.t() | nil,
          type: String.t() | nil
        }

  defstruct [:description, :metadata, :properties, :type]

  @schema_name "BenefitDiscordUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.BenefitDiscordCreateProperties
    }
  end
end
