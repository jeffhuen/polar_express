# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthorizeResponseOrganization do
  @moduledoc """
  AuthorizeResponseOrganization
  """

  @typedoc """
  * `client`
  * `organizations`
  * `scope_display_names`
  * `scopes`
  * `sub` - Nullable.
  * `sub_type`
  """
  @type t :: %__MODULE__{
          client: PolarExpress.Schemas.OAuth2ClientPublic.t() | nil,
          organizations: [PolarExpress.Schemas.AuthorizeOrganization.t()] | nil,
          scope_display_names: %{String.t() => String.t()} | nil,
          scopes: [PolarExpress.Schemas.Scope.t()] | nil,
          sub: PolarExpress.Schemas.AuthorizeOrganization.t() | nil,
          sub_type: String.t() | nil
        }

  defstruct [:client, :organizations, :scope_display_names, :scopes, :sub, :sub_type]

  @schema_name "AuthorizeResponseOrganization"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "client" => PolarExpress.Schemas.OAuth2ClientPublic,
      "organizations" => PolarExpress.Schemas.AuthorizeOrganization,
      "scopes" => PolarExpress.Schemas.Scope,
      "sub" => PolarExpress.Schemas.AuthorizeOrganization
    }
  end
end
