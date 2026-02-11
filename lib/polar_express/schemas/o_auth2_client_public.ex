# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OAuth2ClientPublic do
  @moduledoc """
  OAuth2ClientPublic
  """

  @typedoc """
  * `client_id`
  * `client_name` - Nullable.
  * `client_uri` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `logo_uri` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `policy_uri` - Nullable.
  * `tos_uri` - Nullable.
  """
  @type t :: %__MODULE__{
          client_id: String.t() | nil,
          client_name: String.t() | nil,
          client_uri: String.t() | nil,
          created_at: DateTime.t() | nil,
          logo_uri: String.t() | nil,
          modified_at: DateTime.t() | nil,
          policy_uri: String.t() | nil,
          tos_uri: String.t() | nil
        }

  defstruct [
    :client_id,
    :client_name,
    :client_uri,
    :created_at,
    :logo_uri,
    :modified_at,
    :policy_uri,
    :tos_uri
  ]

  @schema_name "OAuth2ClientPublic"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
