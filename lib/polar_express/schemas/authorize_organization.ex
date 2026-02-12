# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthorizeOrganization do
  @moduledoc """
  AuthorizeOrganization
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `id` - Format: uuid4.
  * `slug`
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          id: String.t() | nil,
          slug: String.t() | nil
        }

  defstruct [:avatar_url, :id, :slug]

  @schema_name "AuthorizeOrganization"
  def schema_name, do: @schema_name
end
