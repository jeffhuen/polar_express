# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OIDCConfigurationRead do
  @moduledoc """
  OIDCConfigurationRead
  """

  @typedoc """
  * `auth_method` - Authentication method used against the identity provider.
  * `authorization_parameters` - Additional parameters appended to the authorization request, e.g. `hd` to pin a Google Workspace domain.
  * `client_id` - OAuth client ID registered with the identity provider.
  * `issuer` - OIDC issuer URL of the identity provider.
  """
  @type t :: %__MODULE__{}

  defstruct [:auth_method, :authorization_parameters, :client_id, :issuer]

  @schema_name "OIDCConfigurationRead"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "auth_method" => PolarExpress.Schemas.OIDCAuthMethod
    }
  end
end
