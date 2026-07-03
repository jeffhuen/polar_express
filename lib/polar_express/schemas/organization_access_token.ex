# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAccessToken do
  @moduledoc """
  OrganizationAccessToken
  """

  @typedoc """
  * `comment`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `expires_at` - Nullable.
  * `id` - Format: uuid4.
  * `last_used_at` - Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - The organization ID. Format: uuid4.
  * `scopes`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :comment,
    :created_at,
    :expires_at,
    :id,
    :last_used_at,
    :modified_at,
    :organization_id,
    :scopes
  ]

  @schema_name "OrganizationAccessToken"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "scopes" => PolarExpress.Schemas.Scope
    }
  end

  def __date_fields__, do: [:created_at, :expires_at, :last_used_at, :modified_at]
end
