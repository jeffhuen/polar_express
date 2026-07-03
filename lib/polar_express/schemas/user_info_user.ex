# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserInfoUser do
  @moduledoc """
  UserInfoUser
  """

  @typedoc """
  * `email` - Nullable.
  * `email_verified` - Nullable.
  * `name` - Nullable.
  * `sub`
  """
  @type t :: %__MODULE__{}

  defstruct [:email, :email_verified, :name, :sub]

  @schema_name "UserInfoUser"
  def schema_name, do: @schema_name
end
