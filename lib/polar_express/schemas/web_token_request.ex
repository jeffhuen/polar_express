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
  @type t :: %__MODULE__{}

  defstruct [:client_id, :client_secret, :grant_type, :scope, :session_token, :sub, :sub_type]

  @schema_name "WebTokenRequest"
  def schema_name, do: @schema_name
end
