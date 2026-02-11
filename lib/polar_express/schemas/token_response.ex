# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TokenResponse do
  @moduledoc """
  TokenResponse
  """

  @typedoc """
  * `access_token`
  * `expires_in`
  * `id_token`
  * `refresh_token` - Nullable.
  * `scope`
  * `token_type`
  """
  @type t :: %__MODULE__{
          access_token: String.t() | nil,
          expires_in: integer() | nil,
          id_token: String.t() | nil,
          refresh_token: String.t() | nil,
          scope: String.t() | nil,
          token_type: String.t() | nil
        }

  defstruct [:access_token, :expires_in, :id_token, :refresh_token, :scope, :token_type]

  @schema_name "TokenResponse"
  def schema_name, do: @schema_name
end
