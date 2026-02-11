# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberSession do
  @moduledoc """
  MemberSession

  A member session that can be used to authenticate as a member in the customer portal.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `expires_at` - Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `member`
  * `member_id` - Format: uuid4.
  * `member_portal_url`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `return_url` - Nullable.
  * `token`
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          customer: PolarExpress.Schemas.Customer.t() | nil,
          customer_id: String.t() | nil,
          expires_at: DateTime.t() | nil,
          id: String.t() | nil,
          member: PolarExpress.Schemas.Member.t() | nil,
          member_id: String.t() | nil,
          member_portal_url: String.t() | nil,
          modified_at: DateTime.t() | nil,
          return_url: String.t() | nil,
          token: String.t() | nil
        }

  defstruct [
    :created_at,
    :customer,
    :customer_id,
    :expires_at,
    :id,
    :member,
    :member_id,
    :member_portal_url,
    :modified_at,
    :return_url,
    :token
  ]

  @schema_name "MemberSession"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer" => PolarExpress.Schemas.Customer,
      "member" => PolarExpress.Schemas.Member
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :modified_at]
end
