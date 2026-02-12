# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebTokenRequest do
  @moduledoc """
  WebTokenRequest
  """

  @typedoc """
  * `client_id`
  * `client_secret`
  * `grant_type`
  * `scope` - Nullable.
  * `session_token`
  * `sub` - Nullable.
  * `sub_type` - Possible values: `user`, `organization`.
  """
  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_secret: String.t() | nil,
          grant_type: String.t() | nil,
          scope: String.t() | nil,
          session_token: String.t() | nil,
          sub: String.t() | nil,
          sub_type: String.t() | nil
        }

  defstruct [:client_id, :client_secret, :grant_type, :scope, :session_token, :sub, :sub_type]

  @schema_name "WebTokenRequest"
  def schema_name, do: @schema_name
end
