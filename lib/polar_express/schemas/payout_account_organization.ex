# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountOrganization do
  @moduledoc """
  PayoutAccountOrganization
  """

  @typedoc """
  * `id` - Format: uuid.
  * `slug`
  """
  @type t :: %__MODULE__{}

  defstruct [:id, :slug]

  @schema_name "PayoutAccountOrganization"
  def schema_name, do: @schema_name
end
