# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSSOConnectionCreate do
  @moduledoc """
  OrganizationSSOConnectionCreate
  """

  @typedoc """
  * `configuration` - Provider-specific configuration of the connection.
  * `enabled` - Whether the connection can be used to sign in.
  * `name` - Human-friendly label for the connection, shown on the login page. Nullable.
  * `type` - Type of the SSO connection.
  """
  @type t :: %__MODULE__{}

  defstruct [:configuration, :enabled, :name, :type]

  @schema_name "OrganizationSSOConnectionCreate"
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
