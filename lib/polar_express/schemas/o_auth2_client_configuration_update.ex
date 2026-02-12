# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OAuth2ClientConfigurationUpdate do
  @moduledoc """
  OAuth2ClientConfigurationUpdate
  """

  @typedoc """
  * `client_id`
  * `client_name`
  * `client_uri` - Nullable.
  * `default_sub_type`
  * `grant_types`
  * `logo_uri` - Nullable.
  * `policy_uri` - Nullable.
  * `redirect_uris`
  * `response_types`
  * `scope`
  * `token_endpoint_auth_method` - Possible values: `client_secret_basic`, `client_secret_post`, `none`.
  * `tos_uri` - Nullable.
  """
  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_name: String.t() | nil,
          client_uri: String.t() | nil,
          default_sub_type: PolarExpress.Schemas.SubType.t() | nil,
          grant_types: [String.t()] | nil,
          logo_uri: String.t() | nil,
          policy_uri: String.t() | nil,
          redirect_uris: [String.t()] | nil,
          response_types: [String.t()] | nil,
          scope: String.t() | nil,
          token_endpoint_auth_method: String.t() | nil,
          tos_uri: String.t() | nil
        }

  defstruct [
    :client_id,
    :client_name,
    :client_uri,
    :default_sub_type,
    :grant_types,
    :logo_uri,
    :policy_uri,
    :redirect_uris,
    :response_types,
    :scope,
    :token_endpoint_auth_method,
    :tos_uri
  ]

  @schema_name "OAuth2ClientConfigurationUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "default_sub_type" => PolarExpress.Schemas.SubType
    }
  end
end
