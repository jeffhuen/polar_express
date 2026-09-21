# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSSOConnection do
  @moduledoc """
  OrganizationSSOConnection
  """

  @typedoc """
  * `configuration` - Provider-specific configuration of the connection.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `enabled` - Whether the connection can be used to sign in.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Human-friendly label for the connection, shown on the login page. Nullable.
  * `organization_id` - ID of the organization the connection belongs to. Format: uuid4.
  * `type` - Type of the SSO connection.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :configuration,
    :created_at,
    :enabled,
    :id,
    :modified_at,
    :name,
    :organization_id,
    :type
  ]

  @schema_name "OrganizationSSOConnection"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "configuration" => PolarExpress.Schemas.OIDCConfigurationRead,
      "type" => PolarExpress.Schemas.OrganizationSSOConnectionType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
