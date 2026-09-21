# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyActivationCreated do
  @moduledoc """
  LicenseKeyActivationCreated
  """

  @typedoc """
  * `created_at` - Format: date-time.
  * `id` - Format: uuid4.
  * `label`
  * `license_key`
  * `license_key_id` - Format: uuid4.
  * `meta`
  * `modified_at` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :label, :license_key, :license_key_id, :meta, :modified_at]

  @schema_name "LicenseKeyActivationCreated"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "license_key" => PolarExpress.Schemas.GrantedLicenseKey
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
