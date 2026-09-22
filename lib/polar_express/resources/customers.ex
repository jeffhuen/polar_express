# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Customers do
  @moduledoc """
  Customers

  Customers API operations.
  """

  @typedoc """
  * `avatar_url`
  * `billing_address`
  * `billing_name` - The name that should appear on the customer's invoices. Falls back to the customer name when not explicitly set.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `default_payment_method_id` - The ID of the customer's default payment method, if any. Use the payment methods endpoint to retrieve its details.
  * `deleted_at` - Timestamp for when the customer was soft deleted.
  * `email` - The email address of the customer. This must be unique within the organization.
  * `email_verified` - Whether the customer email address is verified. The address is automatically verified when the customer accesses the customer portal using their email address.
  * `external_id` - The ID of the customer in your system. This must be unique within the organization. Once set, it can't be updated.
  * `first_user_event_at` - Timestamp of the first event ingested for this customer. Can predate `created_at`, and is null if no event was ever ingested.
  * `id` - The ID of the customer. Format: uuid4.
  * `locale`
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the customer.
  * `organization_id` - The ID of the organization owning the customer. Format: uuid4.
  * `tax_id`
  * `type` - The type of customer. Team customers can have multiple members.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :avatar_url,
    :billing_address,
    :billing_name,
    :created_at,
    :default_payment_method_id,
    :deleted_at,
    :email,
    :email_verified,
    :external_id,
    :first_user_event_at,
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
