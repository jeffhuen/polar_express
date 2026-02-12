# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitLicenseKeysCreate do
  @moduledoc """
  BenefitLicenseKeysCreate
  """

  @typedoc """
  * `description` - The description of the benefit. Will be displayed on products having this benefit. Max length: 42.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `organization_id` - The ID of the organization owning the benefit. **Required unless you use an organization token.** Nullable.
  * `properties`
  * `type`
  """
  @type t :: %__MODULE__{
          description: String.t() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          organization_id: String.t() | nil,
          properties: PolarExpress.Schemas.BenefitLicenseKeysCreateProperties.t() | nil,
          type: String.t() | nil
        }

  defstruct [:description, :metadata, :organization_id, :properties, :type]

  @schema_name "BenefitLicenseKeysCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.BenefitLicenseKeysCreateProperties
    }
  end
end
