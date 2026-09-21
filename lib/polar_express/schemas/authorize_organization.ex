# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthorizeOrganization do
  @moduledoc """
  AuthorizeOrganization
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `id` - Format: uuid4.
  * `name`
  * `slug`
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :id, :name, :slug]

  @schema_name "AuthorizeOrganization"
  def schema_name, do: @schema_name
end
