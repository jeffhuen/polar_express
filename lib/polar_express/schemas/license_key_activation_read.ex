# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyActivationRead do
  @moduledoc """
  LicenseKeyActivationRead
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

  @schema_name "LicenseKeyActivationRead"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "license_key" => PolarExpress.Schemas.LicenseKeyRead
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
