# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalMember do
  @moduledoc """
  CustomerPortalMember

  A member of the customer's team as seen in the customer portal.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `email` - The email address of the member.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the member. Nullable.
  * `role` - The role of the member within the team.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          role: PolarExpress.Schemas.MemberRole.t() | nil
        }

  defstruct [:created_at, :email, :id, :modified_at, :name, :role]

  @schema_name "CustomerPortalMember"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
