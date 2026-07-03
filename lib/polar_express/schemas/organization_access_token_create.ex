# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAccessTokenCreate do
  @moduledoc """
  OrganizationAccessTokenCreate
  """

  @typedoc """
  * `comment`
  * `expires_in` - Nullable.
  * `organization_id` - Nullable.
  * `scopes`
  """
  @type t :: %__MODULE__{}

  defstruct [:comment, :expires_in, :organization_id, :scopes]

  @schema_name "OrganizationAccessTokenCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "scopes" => PolarExpress.Schemas.AvailableScope
    }
  end
end
