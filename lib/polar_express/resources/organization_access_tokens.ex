# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.OrganizationAccessTokens do
  @moduledoc """
  OrganizationAccessTokens

  OrganizationAccessTokens API operations.
  """

  @typedoc """
  * `comment`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `expires_at`
  * `id` - Format: uuid4.
  * `last_used_at`
  * `modified_at` - Last modification timestamp of the object.
  * `organization_id` - The organization ID. Format: uuid4.
  * `scopes`
  """
  @type t :: %__MODULE__{
          comment: String.t() | nil,
          created_at: String.t() | nil,
          expires_at: term() | nil,
          id: String.t() | nil,
          last_used_at: term() | nil,
          modified_at: term() | nil,
          organization_id: String.t() | nil,
          scopes: [map()] | nil
        }

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

  @object_name "organization_access_tokens"
  def object_name, do: @object_name
end
