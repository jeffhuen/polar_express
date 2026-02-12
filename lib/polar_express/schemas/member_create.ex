# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberCreate do
  @moduledoc """
  MemberCreate

  Schema for creating a new member.
  """

  @typedoc """
  * `customer_id` - The ID of the customer this member belongs to. Format: uuid4.
  * `email` - The email address of the member. Format: email.
  * `external_id` - The ID of the member in your system. This must be unique within the customer. Nullable.
  * `name` - Nullable.
  * `role` - The role of the member within the customer.
  """
  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          email: String.t() | nil,
          external_id: String.t() | nil,
          name: String.t() | nil,
          role: PolarExpress.Schemas.MemberRole.t() | nil
        }

  defstruct [:customer_id, :email, :external_id, :name, :role]

  @schema_name "MemberCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end
end
