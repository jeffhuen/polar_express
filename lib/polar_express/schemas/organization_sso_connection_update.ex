# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSSOConnectionUpdate do
  @moduledoc """
  OrganizationSSOConnectionUpdate
  """

  @typedoc """
  * `configuration` - Provider-specific configuration of the connection. Nullable.
  * `enabled` - Whether the connection can be used to sign in. Nullable.
  * `name` - Human-friendly label for the connection, shown on the login page. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:configuration, :enabled, :name]

  @schema_name "OrganizationSSOConnectionUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "configuration" =>
        {:union, :discriminated, "auth_method",
         %{
           "client_secret" => PolarExpress.Schemas.OIDCConfigurationClientSecret,
           "private_key_jwt" => PolarExpress.Schemas.OIDCConfigurationPrivateKeyJWT
         }}
    }
  end
end
