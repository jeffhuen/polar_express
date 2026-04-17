# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Customers do
  @moduledoc """
  Customers

  Customers API operations.
  """

  @typedoc """
  * `avatar_url`
  * `billing_address`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deleted_at` - Timestamp for when the customer was soft deleted.
  * `email` - The email address of the customer. This must be unique within the organization.
  * `email_verified` - Whether the customer email address is verified. The address is automatically verified when the customer accesses the customer portal using their email address.
  * `external_id` - The ID of the customer in your system. This must be unique within the organization. Once set, it can't be updated.
  * `id` - The ID of the customer. Format: uuid4.
  * `locale`
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the customer.
  * `organization_id` - The ID of the organization owning the customer. Format: uuid4.
  * `tax_id`
  * `type` - The type of customer. Team customers can have multiple members.
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          billing_address: term() | nil,
          created_at: String.t() | nil,
          deleted_at: term() | nil,
          email: term() | nil,
          email_verified: boolean() | nil,
          external_id: term() | nil,
          id: String.t() | nil,
          locale: term() | nil,
          metadata: map() | nil,
          modified_at: term() | nil,
          name: term() | nil,
          organization_id: String.t() | nil,
          tax_id: term() | nil,
          type: String.t() | nil
        }

  defstruct [
    :avatar_url,
    :billing_address,
    :created_at,
    :deleted_at,
    :email,
    :email_verified,
    :external_id,
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
