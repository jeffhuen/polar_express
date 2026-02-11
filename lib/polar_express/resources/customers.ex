# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Customers do
  @moduledoc """
  Customers

  Customers API operations.
  """

  @typedoc """
  * `active_meters` - The customer's active meters.
  * `active_subscriptions` - The customer's active subscriptions.
  * `avatar_url`
  * `billing_address`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deleted_at` - Timestamp for when the customer was soft deleted.
  * `email` - The email address of the customer. This must be unique within the organization.
  * `email_verified` - Whether the customer email address is verified. The address is automatically verified when the customer accesses the customer portal using their email address.
  * `external_id` - The ID of the customer in your system. This must be unique within the organization. Once set, it can't be updated.
  * `granted_benefits` - The customer's active benefit grants.
  * `id` - The ID of the customer. Format: uuid4.
  * `locale`
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the customer.
  * `organization_id` - The ID of the organization owning the customer. Format: uuid4.
  * `tax_id`
  * `type` - The type of customer: 'individual' for single users, 'team' for customers with multiple members. Legacy customers may have NULL type which is treated as 'individual'.
  """
  @type t :: %__MODULE__{
          active_meters: [map()] | nil,
          active_subscriptions: [map()] | nil,
          avatar_url: String.t() | nil,
          billing_address: map() | nil,
          created_at: String.t() | nil,
          deleted_at: map() | nil,
          email: String.t() | nil,
          email_verified: boolean() | nil,
          external_id: map() | nil,
          granted_benefits: [map()] | nil,
          id: String.t() | nil,
          locale: map() | nil,
          metadata: map() | nil,
          modified_at: map() | nil,
          name: map() | nil,
          organization_id: String.t() | nil,
          tax_id: map() | nil,
          type: map() | nil
        }

  defstruct [
    :active_meters,
    :active_subscriptions,
    :avatar_url,
    :billing_address,
    :created_at,
    :deleted_at,
    :email,
    :email_verified,
    :external_id,
    :granted_benefits,
    :id,
    :locale,
    :metadata,
    :modified_at,
    :name,
    :organization_id,
    :tax_id,
    :type
  ]

  @object_name "customers"
  def object_name, do: @object_name
end
