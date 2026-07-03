# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TokenResponse do
  @moduledoc """
  TokenResponse
  """

  @typedoc """
  * `access_token`
  * `expires_in`
  * `id_token` - Nullable.
  * `refresh_token` - Nullable.
  * `scope`
  * `token_type`
  """
  @type t :: %__MODULE__{}

  defstruct [:access_token, :expires_in, :id_token, :refresh_token, :scope, :token_type]

  @schema_name "TokenResponse"
  def schema_name, do: @schema_name
end
