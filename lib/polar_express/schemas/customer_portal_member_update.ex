# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalMemberUpdate do
  @moduledoc """
  CustomerPortalMemberUpdate

  Schema for updating a member in the customer portal.
  """

  @typedoc """
  * `name` - The new name for the member. Nullable.
  * `role` - The new role for the member. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:name, :role]

  @schema_name "CustomerPortalMemberUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.MemberRole
    }
  end
end
