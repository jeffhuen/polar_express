# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.LicenseKeys do
  @moduledoc """
  License-keys

  LicenseKeys API operations.
  """

  @typedoc """
  * `benefit_id` - The benefit ID. Format: uuid4.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `display_key`
  * `expires_at`
  * `id` - The ID of the object. Format: uuid4.
  * `key`
  * `last_validated_at`
  * `limit_activations`
  * `limit_usage`
  * `member` - The seat member holding this key. Set for keys granted through a seat-based product; `null` for keys granted to the customer directly.
  * `member_id` - The ID of the seat member holding this key, if any.
  * `modified_at` - Last modification timestamp of the object.
  * `organization_id` - Format: uuid4.
  * `status`
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

  @object_name "license-keys"
  def object_name, do: @object_name
end
