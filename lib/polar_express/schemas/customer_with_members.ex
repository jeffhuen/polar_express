# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerWithMembers do
  @moduledoc """
  CustomerWithMembers

  A customer in an organization with their members loaded.
  """

  @typedoc """
  * `avatar_url`
  * `billing_address` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deleted_at` - Timestamp for when the customer was soft deleted. Nullable.
  * `email` - The email address of the customer. This must be unique within the organization.
  * `email_verified` - Whether the customer email address is verified. The address is automatically verified when the customer accesses the customer portal using their email address.
  * `external_id` - The ID of the customer in your system. This must be unique within the organization. Once set, it can't be updated. Nullable.
  * `id` - The ID of the customer. Format: uuid4.
  * `locale` - Nullable.
  * `members` - List of members belonging to this customer.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the customer. Nullable.
  * `organization_id` - The ID of the organization owning the customer. Format: uuid4.
  * `tax_id` - Nullable.
  * `type` - The type of customer: 'individual' for single users, 'team' for customers with multiple members. Legacy customers may have NULL type which is treated as 'individual'. Nullable.
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          billing_address: PolarExpress.Schemas.Address.t() | nil,
          created_at: DateTime.t() | nil,
          deleted_at: DateTime.t() | nil,
          email: String.t() | nil,
          email_verified: boolean() | nil,
          external_id: String.t() | nil,
          id: String.t() | nil,
          locale: String.t() | nil,
          members: [PolarExpress.Schemas.Member.t()] | nil,
          metadata: map() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          tax_id: term(),
          type: PolarExpress.Schemas.CustomerType.t() | nil
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
    :members,
    :metadata,
    :modified_at,
    :name,
    :organization_id,
    :tax_id,
    :type
  ]

  @schema_name "CustomerWithMembers"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.Address,
      "members" => PolarExpress.Schemas.Member,
      "type" => PolarExpress.Schemas.CustomerType
    }
  end

  def __date_fields__, do: [:created_at, :deleted_at, :modified_at]
end
