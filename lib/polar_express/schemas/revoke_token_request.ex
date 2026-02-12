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
  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_secret: String.t() | nil,
          token: String.t() | nil,
          token_type_hint: String.t() | nil
        }

  defstruct [:client_id, :client_secret, :token, :token_type_hint]

  @schema_name "RevokeTokenRequest"
  def schema_name, do: @schema_name
end
