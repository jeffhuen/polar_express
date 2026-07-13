# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DisputeCustomer do
  @moduledoc """
  DisputeCustomer
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `billing_address` - Nullable.
  * `billing_name` - The name that should appear on the customer's invoices. Falls back to the customer name when not explicitly set. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `default_payment_method_id` - The ID of the customer's default payment method, if any. Use the payment methods endpoint to retrieve its details. Nullable.
  * `deleted_at` - Timestamp for when the customer was soft deleted. Nullable.
  * `email` - The email address of the customer. This must be unique within the organization. Nullable.
  * `email_verified` - Whether the customer email address is verified. The address is automatically verified when the customer accesses the customer portal using their email address.
  * `external_id` - The ID of the customer in your system. This must be unique within the organization. Once set, it can't be updated. Nullable.
  * `id` - The ID of the customer. Format: uuid4.
  * `locale` - Nullable.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the customer. Nullable.
  * `organization_id` - The ID of the organization owning the customer. Format: uuid4.
  * `tax_id` - Nullable.
  * `type` - The type of customer: 'individual' for single users, 'team' for customers with multiple members.
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
    :id,
    :locale,
    :metadata,
    :modified_at,
    :name,
    :organization_id,
    :tax_id,
    :type
  ]

  @schema_name "DisputeCustomer"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.Address,
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "tax_id" => {:union, :variants, [PolarExpress.Schemas.TaxIDFormat]},
      "type" => PolarExpress.Schemas.CustomerType
    }
  end

  def __date_fields__, do: [:created_at, :deleted_at, :modified_at]
end
