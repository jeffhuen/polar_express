# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationRoleDefinition do
  @moduledoc """
  OrganizationRoleDefinition

  A role available in an organization and the permissions it grants.
  """

  @typedoc """
  * `id` - The role identifier.
  * `permissions` - The permissions this role grants in the organization.
  """
  @type t :: %__MODULE__{}

  defstruct [:id, :permissions]

  @schema_name "OrganizationRoleDefinition"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "id" => PolarExpress.Schemas.OrganizationRole,
      "permissions" => PolarExpress.Schemas.OrganizationPermission
    }
  end
end
