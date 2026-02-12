# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyActivate do
  @moduledoc """
  LicenseKeyActivate
  """

  @typedoc """
  * `conditions` - Key-value object allowing you to set conditions that must match when validating the license key.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `key`
  * `label`
  * `meta` - Key-value object allowing you to store additional information about the activation

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `organization_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{
          conditions: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          key: String.t() | nil,
          label: String.t() | nil,
          meta: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          organization_id: String.t() | nil
        }

  defstruct [:conditions, :key, :label, :meta, :organization_id]

  @schema_name "LicenseKeyActivate"
  def schema_name, do: @schema_name
end
