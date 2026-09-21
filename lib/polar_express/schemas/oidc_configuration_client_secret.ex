# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OIDCConfigurationClientSecret do
  @moduledoc """
  OIDCConfigurationClientSecret
  """

  @typedoc """
  * `auth_method` - Authentication method used against the identity provider.
  * `authorization_parameters` - Additional parameters appended to the authorization request, e.g. `hd` to pin a Google Workspace domain.
  * `client_id` - OAuth client ID registered with the identity provider.
  * `client_secret` - Client secret used to authenticate against the identity provider.
  * `issuer` - OIDC issuer URL of the identity provider. Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{}

  defstruct [:auth_method, :authorization_parameters, :client_id, :client_secret, :issuer]

  @schema_name "OIDCConfigurationClientSecret"
  def schema_name, do: @schema_name
end
