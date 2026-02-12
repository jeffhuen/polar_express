# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalMemberCreate do
  @moduledoc """
  CustomerPortalMemberCreate

  Schema for adding a new member to the customer's team.
  """

  @typedoc """
  * `email` - The email address of the new member. Format: email.
  * `name` - The name of the new member (optional). Nullable.
  * `role` - The role for the new member. Defaults to 'member'.
  """
  @type t :: %__MODULE__{
          email: String.t() | nil,
          name: String.t() | nil,
          role: PolarExpress.Schemas.MemberRole.t() | nil
        }

  defstruct [:email, :name, :role]

  @schema_name "CustomerPortalMemberCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end
end
