# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalMemberUpdate do
  @moduledoc """
  CustomerPortalMemberUpdate

  Schema for updating a member's role in the customer portal.
  """

  @typedoc """
  * `role` - The new role for the member. Nullable.
  """
  @type t :: %__MODULE__{
          role: PolarExpress.Schemas.MemberRole.t() | nil
        }

  defstruct [:role]

  @schema_name "CustomerPortalMemberUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end
end
