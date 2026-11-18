# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ValidatedLicenseKey do
  @moduledoc """
  ValidatedLicenseKey
  """

  @typedoc """
  * `activation` - Nullable.
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
  * `order` - The one-time order granting the license key, if any. Nullable.
  * `order_id` - The ID of the one-time order granting the license key. Nullable.
  * `organization_id` - Format: uuid4.
  * `status`
  * `subscription` - The subscription granting the license key, if any. Nullable.
  * `subscription_id` - The ID of the subscription granting the license key. Nullable.
  * `usage`
  * `validations`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :activation,
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
    :order,
    :order_id,
    :organization_id,
    :status,
    :subscription,
    :subscription_id,
    :usage,
    :validations
  ]

  @schema_name "ValidatedLicenseKey"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "activation" => PolarExpress.Schemas.LicenseKeyActivationBase,
      "customer" => PolarExpress.Schemas.LicenseKeyCustomer,
      "member" => PolarExpress.Schemas.LicenseKeyMember,
      "order" => PolarExpress.Schemas.LicenseKeyOrder,
      "subscription" => PolarExpress.Schemas.LicenseKeySubscription
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :last_validated_at, :modified_at]
end
