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
  @type t :: %__MODULE__{}

  defstruct [:client_id, :client_secret, :grant_type, :refresh_token]

  @schema_name "RefreshTokenRequest"
  def schema_name, do: @schema_name
end
