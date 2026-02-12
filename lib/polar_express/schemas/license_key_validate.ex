# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyValidate do
  @moduledoc """
  LicenseKeyValidate
  """

  @typedoc """
  * `activation_id` - Nullable.
  * `benefit_id` - Nullable.
  * `conditions` - Key-value object allowing you to set conditions that must match when validating the license key.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `customer_id` - Nullable.
  * `increment_usage` - Nullable.
  * `key`
  * `organization_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{
          activation_id: String.t() | nil,
          benefit_id: String.t() | nil,
          conditions: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          customer_id: String.t() | nil,
          increment_usage: integer() | nil,
          key: String.t() | nil,
          organization_id: String.t() | nil
        }

  defstruct [
    :activation_id,
    :benefit_id,
    :conditions,
    :customer_id,
    :increment_usage,
    :key,
    :organization_id
  ]

  @schema_name "LicenseKeyValidate"
  def schema_name, do: @schema_name
end
