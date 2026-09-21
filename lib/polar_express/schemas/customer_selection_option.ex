# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSelectionOption do
  @moduledoc """
  CustomerSelectionOption

  Minimal customer information for disambiguation selection.
  """

  @typedoc """
  * `id` - The ID of the object. Format: uuid4.
  * `name` - The customer's name, if available. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:id, :name]

  @schema_name "CustomerSelectionOption"
  def schema_name, do: @schema_name
end
