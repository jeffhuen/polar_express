# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationMemberRoleUpdate do
  @moduledoc """
  OrganizationMemberRoleUpdate
  """

  @typedoc """
  * `role` - The role to assign. `owner` is rejected — ownership transfers go through a separate flow. Possible values: `admin`, `finance`, `member`.
  """
  @type t :: %__MODULE__{}

  defstruct [:role]

  @schema_name "OrganizationMemberRoleUpdate"
  def schema_name, do: @schema_name
end
