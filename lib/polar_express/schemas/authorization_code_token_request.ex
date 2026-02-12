# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthorizationCodeTokenRequest do
  @moduledoc """
  AuthorizationCodeTokenRequest
  """

  @typedoc """
  * `client_id`
  * `client_secret`
  * `code`
  * `grant_type`
  * `redirect_uri` - Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_secret: String.t() | nil,
          code: String.t() | nil,
          grant_type: String.t() | nil,
          redirect_uri: String.t() | nil
        }

  defstruct [:client_id, :client_secret, :code, :grant_type, :redirect_uri]

  @schema_name "AuthorizationCodeTokenRequest"
  def schema_name, do: @schema_name
end
