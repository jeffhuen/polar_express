# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RefreshTokenRequest do
  @moduledoc """
  RefreshTokenRequest
  """

  @typedoc """
  * `client_id`
  * `client_secret`
  * `grant_type`
  * `refresh_token`
  """
  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_secret: String.t() | nil,
          grant_type: String.t() | nil,
          refresh_token: String.t() | nil
        }

  defstruct [:client_id, :client_secret, :grant_type, :refresh_token]

  @schema_name "RefreshTokenRequest"
  def schema_name, do: @schema_name
end
