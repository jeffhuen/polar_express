# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSlugAvailability do
  @moduledoc """
  OrganizationSlugAvailability
  """

  @typedoc """
  * `available` - Whether the slug is available for a new organization.
  """
  @type t :: %__MODULE__{}

  defstruct [:available]

  @schema_name "OrganizationSlugAvailability"
  def schema_name, do: @schema_name
end
