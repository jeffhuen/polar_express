# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSlugCheck do
  @moduledoc """
  OrganizationSlugCheck
  """

  @typedoc """
  * `slug` - The slug to check availability for.
  """
  @type t :: %__MODULE__{}

  defstruct [:slug]

  @schema_name "OrganizationSlugCheck"
  def schema_name, do: @schema_name
end
