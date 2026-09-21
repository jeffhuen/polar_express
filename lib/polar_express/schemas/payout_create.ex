# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutCreate do
  @moduledoc """
  PayoutCreate
  """

  @typedoc """
  * `organization_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:organization_id]

  @schema_name "PayoutCreate"
  def schema_name, do: @schema_name
end
