# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyWithActivations do
  @moduledoc """
  LicenseKeyWithActivations
  """

  @typedoc """
  * `activations`
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
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - Format: uuid4.
  * `status`
  * `usage`
  * `validations`
  """
  @type t :: %__MODULE__{
          activations: [PolarExpress.Schemas.LicenseKeyActivationBase.t()] | nil,
          benefit_id: String.t() | nil,
          created_at: DateTime.t() | nil,
          customer: PolarExpress.Schemas.LicenseKeyCustomer.t() | nil,
          customer_id: String.t() | nil,
          display_key: String.t() | nil,
          expires_at: DateTime.t() | nil,
          id: String.t() | nil,
          key: String.t() | nil,
          last_validated_at: DateTime.t() | nil,
          limit_activations: integer() | nil,
          limit_usage: integer() | nil,
          modified_at: DateTime.t() | nil,
          organization_id: String.t() | nil,
          status: PolarExpress.Schemas.LicenseKeyStatus.t() | nil,
          usage: integer() | nil,
          validations: integer() | nil
        }

  defstruct [
    :activations,
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
    :modified_at,
    :organization_id,
    :status,
    :usage,
    :validations
  ]

  @schema_name "LicenseKeyWithActivations"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "activations" => PolarExpress.Schemas.LicenseKeyActivationBase,
      "customer" => PolarExpress.Schemas.LicenseKeyCustomer,
      "status" => PolarExpress.Schemas.LicenseKeyStatus
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :last_validated_at, :modified_at]
end
