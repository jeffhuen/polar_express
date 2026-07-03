# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RevokeTokenRequest do
  @moduledoc """
  RevokeTokenRequest
  """

  @typedoc """
  * `client_id`
  * `client_secret`
  * `token`
  * `token_type_hint` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:client_id, :client_secret, :token, :token_type_hint]

  @schema_name "RevokeTokenRequest"
  def schema_name, do: @schema_name
end
