# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RotatedLicenseKey do
  @moduledoc """
  RotatedLicenseKey
  """

  @typedoc """
  * `benefit_id` - The benefit ID. Format: uuid4.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `display_key`
  * `expires_at` - Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `key`
  * `last_validated_at` - Nullable.
  * `limit_activations` - Nullable.
  * `limit_usage` - Nullable.
  * `member` - The seat member holding this key. Set for keys granted through a seat-based product; `null` for keys granted to the customer directly. Nullable.
  * `member_id` - The ID of the seat member holding this key, if any. Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - Format: uuid4.
  * `status` - Possible values: `granted`, `disabled`.
  * `usage`
  * `validations`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :benefit_id,
    :created_at,
    :customer,
    :customer_id,
    :display_key,
    :expires_at,
    :id,
    :key,
    :last_validated_at,
    :limit_activations,
    :limit_usage,
    :member,
    :member_id,
    :modified_at,
    :organization_id,
    :status,
    :usage,
    :validations
  ]

  @schema_name "RotatedLicenseKey"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer" => PolarExpress.Schemas.LicenseKeyCustomer,
      "member" => PolarExpress.Schemas.LicenseKeyMember
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :last_validated_at, :modified_at]
end
