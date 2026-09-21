# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BlockingOrganization do
  @moduledoc """
  BlockingOrganization

  Organization that is blocking user deletion.
  """

  @typedoc """
  * `id` - Format: uuid4.
  * `name`
  * `slug`
  """
  @type t :: %__MODULE__{}

  defstruct [:id, :name, :slug]

  @schema_name "BlockingOrganization"
  def schema_name, do: @schema_name
end
