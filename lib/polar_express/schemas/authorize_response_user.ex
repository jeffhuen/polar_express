# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthorizeResponseUser do
  @moduledoc """
  AuthorizeResponseUser
  """

  @typedoc """
  * `client`
  * `scope_display_names`
  * `scopes`
  * `sub` - Nullable.
  * `sub_type`
  """
  @type t :: %__MODULE__{}

  defstruct [:client, :scope_display_names, :scopes, :sub, :sub_type]

  @schema_name "AuthorizeResponseUser"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "client" => PolarExpress.Schemas.OAuth2ClientPublic,
      "scopes" => PolarExpress.Schemas.Scope,
      "sub" => PolarExpress.Schemas.AuthorizeUser
    }
  end
end
