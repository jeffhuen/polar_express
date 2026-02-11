# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Oauth2 do
  @moduledoc """
  Oauth2

  Oauth2 API operations.
  """

  @typedoc """
  * `access_token`
  * `expires_in`
  * `id_token`
  * `refresh_token`
  * `scope`
  * `token_type`
  """
  @type t :: %__MODULE__{
          access_token: String.t() | nil,
          expires_in: integer() | nil,
          id_token: String.t() | nil,
          refresh_token: map() | nil,
          scope: String.t() | nil,
          token_type: String.t() | nil
        }

  defstruct [:access_token, :expires_in, :id_token, :refresh_token, :scope, :token_type]

  @object_name "oauth2"
  def object_name, do: @object_name
end
