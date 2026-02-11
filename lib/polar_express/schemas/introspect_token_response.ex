# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.IntrospectTokenResponse do
  @moduledoc """
  IntrospectTokenResponse
  """

  @typedoc """
  * `active`
  * `aud`
  * `client_id`
  * `exp`
  * `iat`
  * `iss`
  * `scope`
  * `sub`
  * `sub_type`
  * `token_type` - Possible values: `access_token`, `refresh_token`.
  """
  @type t :: %__MODULE__{
          active: boolean() | nil,
          aud: String.t() | nil,
          client_id: String.t() | nil,
          exp: integer() | nil,
          iat: integer() | nil,
          iss: String.t() | nil,
          scope: String.t() | nil,
          sub: String.t() | nil,
          sub_type: PolarExpress.Schemas.SubType.t() | nil,
          token_type: String.t() | nil
        }

  defstruct [:active, :aud, :client_id, :exp, :iat, :iss, :scope, :sub, :sub_type, :token_type]

  @schema_name "IntrospectTokenResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "sub_type" => PolarExpress.Schemas.SubType
    }
  end
end
