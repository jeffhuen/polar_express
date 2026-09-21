# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OAuth2Client do
  @moduledoc """
  OAuth2Client
  """

  @typedoc """
  * `client_id`
  * `client_id_issued_at`
  * `client_name`
  * `client_secret`
  * `client_secret_expires_at`
  * `client_uri` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `default_sub_type`
  * `grant_types`
  * `logo_uri` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `policy_uri` - Nullable.
  * `redirect_uris`
  * `response_types`
  * `scope`
  * `token_endpoint_auth_method` - Possible values: `client_secret_basic`, `client_secret_post`, `none`.
  * `tos_uri` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :client_id,
    :client_id_issued_at,
    :client_name,
    :client_secret,
    :client_secret_expires_at,
    :client_uri,
    :created_at,
    :default_sub_type,
    :grant_types,
    :logo_uri,
    :modified_at,
    :policy_uri,
    :redirect_uris,
    :response_types,
    :scope,
    :token_endpoint_auth_method,
    :tos_uri
  ]

  @schema_name "OAuth2Client"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "default_sub_type" => PolarExpress.Schemas.SubType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
