# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationMemberInvite do
  @moduledoc """
  OrganizationMemberInvite
  """

  @typedoc """
  * `email` - Email address of the user to invite Format: email.
  """
  @type t :: %__MODULE__{}

  defstruct [:email]

  @schema_name "OrganizationMemberInvite"
  def schema_name, do: @schema_name
end
