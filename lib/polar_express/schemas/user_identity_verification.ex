# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserIdentityVerification do
  @moduledoc """
  UserIdentityVerification
  """

  @typedoc """
  * `client_secret`
  * `id`
  """
  @type t :: %__MODULE__{}

  defstruct [:client_secret, :id]

  @schema_name "UserIdentityVerification"
  def schema_name, do: @schema_name
end
