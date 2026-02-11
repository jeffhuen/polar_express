# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Member do
  @moduledoc """
  Member

  A member of a customer.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_id` - The ID of the customer this member belongs to. Format: uuid4.
  * `email` - The email address of the member.
  * `external_id` - The ID of the member in your system. This must be unique within the customer. Nullable.
  * `id` - The ID of the member. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the member. Nullable.
  * `role` - The role of the member within the customer.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          customer_id: String.t() | nil,
          email: String.t() | nil,
          external_id: String.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          role: PolarExpress.Schemas.MemberRole.t() | nil
        }

  defstruct [:created_at, :customer_id, :email, :external_id, :id, :modified_at, :name, :role]

  @schema_name "Member"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
