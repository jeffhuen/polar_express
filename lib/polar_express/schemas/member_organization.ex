# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberOrganization do
  @moduledoc """
  MemberOrganization
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `id` - Format: uuid4.
  * `name`
  * `requires_sso` - Whether this organization enforces SSO.
  * `slug`
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :id, :name, :requires_sso, :slug]

  @schema_name "MemberOrganization"
  def schema_name, do: @schema_name
end
