# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TOTPStatus do
  @moduledoc """
  TOTPStatus
  """

  @typedoc """
  * `enabled`
  """
  @type t :: %__MODULE__{}

  defstruct [:enabled]

  @schema_name "TOTPStatus"
  def schema_name, do: @schema_name
end
