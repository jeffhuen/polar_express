# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyActivationBase do
  @moduledoc """
  LicenseKeyActivationBase
  """

  @typedoc """
  * `created_at` - Format: date-time.
  * `id` - Format: uuid4.
  * `label`
  * `license_key_id` - Format: uuid4.
  * `meta`
  * `modified_at` - Nullable.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          label: String.t() | nil,
          license_key_id: String.t() | nil,
          meta: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          modified_at: DateTime.t() | nil
        }

  defstruct [:created_at, :id, :label, :license_key_id, :meta, :modified_at]

  @schema_name "LicenseKeyActivationBase"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
