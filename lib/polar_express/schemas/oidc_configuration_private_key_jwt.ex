# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OIDCConfigurationPrivateKeyJWT do
  @moduledoc """
  OIDCConfigurationPrivateKeyJWT
  """

  @typedoc """
  * `auth_method` - Authentication method used against the identity provider.
  * `authorization_parameters` - Additional parameters appended to the authorization request, e.g. `hd` to pin a Google Workspace domain.
  * `client_id` - OAuth client ID registered with the identity provider.
  * `issuer` - OIDC issuer URL of the identity provider. Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{}

  defstruct [:auth_method, :authorization_parameters, :client_id, :issuer]

  @schema_name "OIDCConfigurationPrivateKeyJWT"
  def schema_name, do: @schema_name
end
